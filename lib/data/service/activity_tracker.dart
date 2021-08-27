import 'dart:async';

import 'package:daily_page/data/firestore/minutely_desktop_activity_data_source.dart';
import 'package:daily_page/data/model/application_session.dart';
import 'package:daily_page/data/model/minutely_desktop_activity.dart';
import 'package:daily_page/foundation/constants.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jiffy/jiffy.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'activity_tracker.freezed.dart';

final activityTrackerProvider = StateNotifierProvider.autoDispose
    .family((ref, String uid) => ActivityTracker(uid: uid));

@freezed
abstract class ActivityTrackerState with _$ActivityTrackerState {
  const factory ActivityTrackerState(
          {@Default(<DateTime, MinutelyDesktopActivity>{})
              Map<DateTime, MinutelyDesktopActivity> activities}) =
      _ActivityTrackerState;
}

class ActivityTracker extends StateNotifier<ActivityTrackerState> {
  ActivityTracker({required this.uid}) : super(const ActivityTrackerState()) {
    _methodChannel.setMethodCallHandler(_handler);
    _initState();
  }

  final MethodChannel _methodChannel = const MethodChannel('activity');
  final String uid;
  late Timer _timer;
  bool _saving = false;
  late _CurrentApp _currentApp;

  Future<void> _initState() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final appName = packageInfo.appName;
    _addApp(
        min: Jiffy().startOf(Units.MINUTE).dateTime,
        appId: packageInfo.packageName,
        appName: appName == '' ? Constants.appName : appName);
    _timer = Timer.periodic(const Duration(seconds: 1), (_) => _update());
  }

  void _update() async {
    if (_saving) {
      return;
    }

    final beginningOfMinute = Jiffy().startOf(Units.MINUTE).dateTime;
    _ensurePresentMinuteActivity(beginningOfMinute);

    final now = DateTime.now();
    state = state.copyWith(activities: {
      ...state.activities,
      ...{now: MinutelyDesktopActivity(begin: now)}
    });

    final savingActivities = <DateTime, MinutelyDesktopActivity>{};
    final updatedActivities = <DateTime, MinutelyDesktopActivity>{};
    state.activities.forEach((min, activity) {
      if (activity.isEmpty()) {
        // igonre
      } else if (min.isBefore(beginningOfMinute)) {
        savingActivities[min] = activity;
      } else {
        updatedActivities[min] = activity;
      }
    });
    if (savingActivities.isEmpty) {
      return;
    }

    try {
      _saving = true;
      await addMinutelyDesktopActivities(uid, savingActivities);
      state = state.copyWith(activities: updatedActivities);
    } on Exception catch (e) {
      print(e);
      // TODO: notify
      rethrow;
    } finally {
      _saving = false;
    }
  }

  void _ensurePresentMinuteActivity(DateTime min) {
    if (state.activities[min] != null) {
      return;
    }
    state = state.copyWith(activities: {
      ...state.activities,
      min: MinutelyDesktopActivity(begin: min, applicationSessions: [
        ApplicationSession(applicationId: _currentApp.id, start: min)
      ], applicationNames: {
        _currentApp.id: _currentApp.name
      })
    });
  }

  void _addApp(
      {required DateTime min, required String appId, required String appName}) {
    final now = DateTime.now();
    final session = ApplicationSession(applicationId: appId, start: now);
    _updateMinutelyActivity(
        min,
        (a) => a.copyWith(
            applicationSessions: [...a.applicationSessions, session],
            applicationNames: {...a.applicationNames, appId: appName}));
    _currentApp = _CurrentApp(id: appId, name: appName, start: now);
  }

  void _updateMinutelyActivity(
      DateTime min,
      MinutelyDesktopActivity Function(MinutelyDesktopActivity)
          minutelyActivity) {
    final activity =
        state.activities[min] ?? MinutelyDesktopActivity(begin: min);
    state = state.copyWith(activities: {
      ...state.activities,
      ...{min: minutelyActivity(activity)}
    });
  }

  Future<dynamic> _handler(MethodCall call) async {
    if (!mounted) {
      return;
    }
    final min = Jiffy().startOf(Units.MINUTE).dateTime;
    _ensurePresentMinuteActivity(min);
    switch (call.method) {
      case 'application':
        _addApp(
            min: min,
            appId: call.arguments['id'] as String,
            appName: call.arguments['name'] as String);
        break;
      case 'key_down':
        _updateMinutelyActivity(
            min, (a) => a.copyWith(keyDownCount: a.keyDownCount + 1));
        break;
      case 'mouse_move':
        _updateMinutelyActivity(
            min, (a) => a.copyWith(mouseMoveCount: a.mouseMoveCount + 1));
        break;
      case 'scroll':
        _updateMinutelyActivity(
            min, (a) => a.copyWith(scrollCount: a.scrollCount + 1));
        break;
      case 'click':
        _updateMinutelyActivity(
            min, (a) => a.copyWith(clickCount: a.clickCount + 1));
        break;
      case 'sleep':
        final apps = state.activities[min]?.applicationSessions ?? [];
        if (apps.isNotEmpty) {
          apps[apps.length - 1] =
              apps[apps.length - 1].copyWith(start: DateTime.now());
          _updateMinutelyActivity(
              min, (a) => a.copyWith(applicationSessions: apps));
        }
        break;
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}

@freezed
abstract class _CurrentApp with _$_CurrentApp {
  const factory _CurrentApp(
      {required String id,
      required String name,
      required DateTime start}) = __CurrentApp;
}
