// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApplicationSession _$ApplicationSessionFromJson(Map<String, dynamic> json) {
  return _ApplicationSession.fromJson(json);
}

/// @nodoc
class _$ApplicationSessionTearOff {
  const _$ApplicationSessionTearOff();

  _ApplicationSession call(
      {required String applicationId,
      @TimestampConverter() required DateTime start,
      @TimestampNullableConverter() DateTime? end}) {
    return _ApplicationSession(
      applicationId: applicationId,
      start: start,
      end: end,
    );
  }

  ApplicationSession fromJson(Map<String, Object> json) {
    return ApplicationSession.fromJson(json);
  }
}

/// @nodoc
const $ApplicationSession = _$ApplicationSessionTearOff();

/// @nodoc
mixin _$ApplicationSession {
  String get applicationId => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get start => throw _privateConstructorUsedError;
  @TimestampNullableConverter()
  DateTime? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationSessionCopyWith<ApplicationSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationSessionCopyWith<$Res> {
  factory $ApplicationSessionCopyWith(
          ApplicationSession value, $Res Function(ApplicationSession) then) =
      _$ApplicationSessionCopyWithImpl<$Res>;
  $Res call(
      {String applicationId,
      @TimestampConverter() DateTime start,
      @TimestampNullableConverter() DateTime? end});
}

/// @nodoc
class _$ApplicationSessionCopyWithImpl<$Res>
    implements $ApplicationSessionCopyWith<$Res> {
  _$ApplicationSessionCopyWithImpl(this._value, this._then);

  final ApplicationSession _value;
  // ignore: unused_field
  final $Res Function(ApplicationSession) _then;

  @override
  $Res call({
    Object? applicationId = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ApplicationSessionCopyWith<$Res>
    implements $ApplicationSessionCopyWith<$Res> {
  factory _$ApplicationSessionCopyWith(
          _ApplicationSession value, $Res Function(_ApplicationSession) then) =
      __$ApplicationSessionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String applicationId,
      @TimestampConverter() DateTime start,
      @TimestampNullableConverter() DateTime? end});
}

/// @nodoc
class __$ApplicationSessionCopyWithImpl<$Res>
    extends _$ApplicationSessionCopyWithImpl<$Res>
    implements _$ApplicationSessionCopyWith<$Res> {
  __$ApplicationSessionCopyWithImpl(
      _ApplicationSession _value, $Res Function(_ApplicationSession) _then)
      : super(_value, (v) => _then(v as _ApplicationSession));

  @override
  _ApplicationSession get _value => super._value as _ApplicationSession;

  @override
  $Res call({
    Object? applicationId = freezed,
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_ApplicationSession(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApplicationSession implements _ApplicationSession {
  const _$_ApplicationSession(
      {required this.applicationId,
      @TimestampConverter() required this.start,
      @TimestampNullableConverter() this.end});

  factory _$_ApplicationSession.fromJson(Map<String, dynamic> json) =>
      _$_$_ApplicationSessionFromJson(json);

  @override
  final String applicationId;
  @override
  @TimestampConverter()
  final DateTime start;
  @override
  @TimestampNullableConverter()
  final DateTime? end;

  @override
  String toString() {
    return 'ApplicationSession(applicationId: $applicationId, start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApplicationSession &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end);

  @JsonKey(ignore: true)
  @override
  _$ApplicationSessionCopyWith<_ApplicationSession> get copyWith =>
      __$ApplicationSessionCopyWithImpl<_ApplicationSession>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApplicationSessionToJson(this);
  }
}

abstract class _ApplicationSession implements ApplicationSession {
  const factory _ApplicationSession(
      {required String applicationId,
      @TimestampConverter() required DateTime start,
      @TimestampNullableConverter() DateTime? end}) = _$_ApplicationSession;

  factory _ApplicationSession.fromJson(Map<String, dynamic> json) =
      _$_ApplicationSession.fromJson;

  @override
  String get applicationId => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime get start => throw _privateConstructorUsedError;
  @override
  @TimestampNullableConverter()
  DateTime? get end => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApplicationSessionCopyWith<_ApplicationSession> get copyWith =>
      throw _privateConstructorUsedError;
}
