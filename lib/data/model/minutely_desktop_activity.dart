import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_page/data/json_converter.dart';
import 'package:daily_page/data/model/application_session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'minutely_desktop_activity.freezed.dart';
part 'minutely_desktop_activity.g.dart';

@freezed
abstract class MinutelyDesktopActivity with _$MinutelyDesktopActivity {
  const factory MinutelyDesktopActivity(
      {@Default(<ApplicationSession>[])
          List<ApplicationSession> applicationSessions,
      @Default(<String, String>{})
          Map<String, String> applicationNames,
      @Default(0)
          int keyDownCount,
      @Default(0)
          int mouseMoveCount,
      @Default(0)
          int scrollCount,
      @Default(0)
          int clickCount,
      @TimestampConverter()
          required DateTime begin,
      @TimestampNullableConverter()
          DateTime? created}) = _MinutelyDesktopActivity;
  const MinutelyDesktopActivity._();

  factory MinutelyDesktopActivity.fromJson(Map<String, dynamic> json) =>
      _$MinutelyDesktopActivityFromJson(json);

  bool isEmpty() {
    return (applicationSessions.isEmpty ||
            (applicationSessions.length == 1 &&
                applicationSessions[0].applicationId ==
                    'com.apple.loginwindow')) &&
        keyDownCount == 0 &&
        mouseMoveCount == 0 &&
        scrollCount == 0 &&
        clickCount == 0;
  }

  bool eventExists() {
    return keyDownCount > 0 ||
        mouseMoveCount > 0 ||
        scrollCount > 0 ||
        clickCount > 0;
  }
}
