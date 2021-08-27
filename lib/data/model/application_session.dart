import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:daily_page/data/json_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_session.freezed.dart';
part 'application_session.g.dart';

@freezed
abstract class ApplicationSession with _$ApplicationSession {
  const factory ApplicationSession(
      {required String applicationId,
      @TimestampConverter() required DateTime start,
      @TimestampNullableConverter() DateTime? end}) = _ApplicationSession;

  factory ApplicationSession.fromJson(Map<String, dynamic> json) =>
      _$ApplicationSessionFromJson(json);
}
