// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplicationSession _$_$_ApplicationSessionFromJson(
    Map<String, dynamic> json) {
  return _$_ApplicationSession(
    applicationId: json['applicationId'] as String,
    start: const TimestampConverter().fromJson(json['start'] as Timestamp),
    end: const TimestampNullableConverter().fromJson(json['end'] as Timestamp?),
  );
}

Map<String, dynamic> _$_$_ApplicationSessionToJson(
        _$_ApplicationSession instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'start': const TimestampConverter().toJson(instance.start),
      'end': const TimestampNullableConverter().toJson(instance.end),
    };
