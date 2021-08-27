// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minutely_desktop_activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MinutelyDesktopActivity _$_$_MinutelyDesktopActivityFromJson(
    Map<String, dynamic> json) {
  return _$_MinutelyDesktopActivity(
    applicationSessions: (json['applicationSessions'] as List<dynamic>?)
            ?.map((e) => ApplicationSession.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    applicationNames: (json['applicationNames'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as String),
        ) ??
        {},
    keyDownCount: json['keyDownCount'] as int? ?? 0,
    mouseMoveCount: json['mouseMoveCount'] as int? ?? 0,
    scrollCount: json['scrollCount'] as int? ?? 0,
    clickCount: json['clickCount'] as int? ?? 0,
    begin: const TimestampConverter().fromJson(json['begin'] as Timestamp),
    created: const TimestampNullableConverter()
        .fromJson(json['created'] as Timestamp?),
  );
}

Map<String, dynamic> _$_$_MinutelyDesktopActivityToJson(
        _$_MinutelyDesktopActivity instance) =>
    <String, dynamic>{
      'applicationSessions':
          instance.applicationSessions.map((e) => e.toJson()).toList(),
      'applicationNames': instance.applicationNames,
      'keyDownCount': instance.keyDownCount,
      'mouseMoveCount': instance.mouseMoveCount,
      'scrollCount': instance.scrollCount,
      'clickCount': instance.clickCount,
      'begin': const TimestampConverter().toJson(instance.begin),
      'created': const TimestampNullableConverter().toJson(instance.created),
    };
