// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplicationHistory _$_$_ApplicationHistoryFromJson(
    Map<String, dynamic> json) {
  return _$_ApplicationHistory(
    applicationId: json['applicationId'] as String,
    applicationName: json['applicationName'] as String,
    durationMilliseconds: json['durationMilliseconds'] as int,
    sessionCount: json['sessionCount'] as int,
    color: json['color'] as String?,
  );
}

Map<String, dynamic> _$_$_ApplicationHistoryToJson(
        _$_ApplicationHistory instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'applicationName': instance.applicationName,
      'durationMilliseconds': instance.durationMilliseconds,
      'sessionCount': instance.sessionCount,
      'color': instance.color,
    };
