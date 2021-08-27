import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class PassthroughConverter<T> implements JsonConverter<T, Object?> {
  const PassthroughConverter();

  @override
  T fromJson(Object? json) => json as T;

  @override
  Object? toJson(T object) => object;
}

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp json) => json.toDate();

  @override
  Timestamp toJson(DateTime object) => Timestamp.fromDate(object);
}

class TimestampNullableConverter
    implements JsonConverter<DateTime?, Timestamp?> {
  const TimestampNullableConverter();

  @override
  DateTime? fromJson(Timestamp? json) => json?.toDate();

  @override
  Timestamp? toJson(DateTime? object) =>
      object == null ? null : Timestamp.fromDate(object);
}

class DocumentReferenceConverter
    extends PassthroughConverter<DocumentReference> {
  const DocumentReferenceConverter();
}

class DocumentReferenceNullableConverter
    extends PassthroughConverter<DocumentReference?> {
  const DocumentReferenceNullableConverter();
}
