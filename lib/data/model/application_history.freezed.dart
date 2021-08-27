// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApplicationHistory _$ApplicationHistoryFromJson(Map<String, dynamic> json) {
  return _ApplicationHistory.fromJson(json);
}

/// @nodoc
class _$ApplicationHistoryTearOff {
  const _$ApplicationHistoryTearOff();

  _ApplicationHistory call(
      {required String applicationId,
      required String applicationName,
      required int durationMilliseconds,
      required int sessionCount,
      String? color}) {
    return _ApplicationHistory(
      applicationId: applicationId,
      applicationName: applicationName,
      durationMilliseconds: durationMilliseconds,
      sessionCount: sessionCount,
      color: color,
    );
  }

  ApplicationHistory fromJson(Map<String, Object> json) {
    return ApplicationHistory.fromJson(json);
  }
}

/// @nodoc
const $ApplicationHistory = _$ApplicationHistoryTearOff();

/// @nodoc
mixin _$ApplicationHistory {
  String get applicationId => throw _privateConstructorUsedError;
  String get applicationName => throw _privateConstructorUsedError;
  int get durationMilliseconds => throw _privateConstructorUsedError;
  int get sessionCount => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationHistoryCopyWith<ApplicationHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationHistoryCopyWith<$Res> {
  factory $ApplicationHistoryCopyWith(
          ApplicationHistory value, $Res Function(ApplicationHistory) then) =
      _$ApplicationHistoryCopyWithImpl<$Res>;
  $Res call(
      {String applicationId,
      String applicationName,
      int durationMilliseconds,
      int sessionCount,
      String? color});
}

/// @nodoc
class _$ApplicationHistoryCopyWithImpl<$Res>
    implements $ApplicationHistoryCopyWith<$Res> {
  _$ApplicationHistoryCopyWithImpl(this._value, this._then);

  final ApplicationHistory _value;
  // ignore: unused_field
  final $Res Function(ApplicationHistory) _then;

  @override
  $Res call({
    Object? applicationId = freezed,
    Object? applicationName = freezed,
    Object? durationMilliseconds = freezed,
    Object? sessionCount = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String,
      applicationName: applicationName == freezed
          ? _value.applicationName
          : applicationName // ignore: cast_nullable_to_non_nullable
              as String,
      durationMilliseconds: durationMilliseconds == freezed
          ? _value.durationMilliseconds
          : durationMilliseconds // ignore: cast_nullable_to_non_nullable
              as int,
      sessionCount: sessionCount == freezed
          ? _value.sessionCount
          : sessionCount // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ApplicationHistoryCopyWith<$Res>
    implements $ApplicationHistoryCopyWith<$Res> {
  factory _$ApplicationHistoryCopyWith(
          _ApplicationHistory value, $Res Function(_ApplicationHistory) then) =
      __$ApplicationHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String applicationId,
      String applicationName,
      int durationMilliseconds,
      int sessionCount,
      String? color});
}

/// @nodoc
class __$ApplicationHistoryCopyWithImpl<$Res>
    extends _$ApplicationHistoryCopyWithImpl<$Res>
    implements _$ApplicationHistoryCopyWith<$Res> {
  __$ApplicationHistoryCopyWithImpl(
      _ApplicationHistory _value, $Res Function(_ApplicationHistory) _then)
      : super(_value, (v) => _then(v as _ApplicationHistory));

  @override
  _ApplicationHistory get _value => super._value as _ApplicationHistory;

  @override
  $Res call({
    Object? applicationId = freezed,
    Object? applicationName = freezed,
    Object? durationMilliseconds = freezed,
    Object? sessionCount = freezed,
    Object? color = freezed,
  }) {
    return _then(_ApplicationHistory(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String,
      applicationName: applicationName == freezed
          ? _value.applicationName
          : applicationName // ignore: cast_nullable_to_non_nullable
              as String,
      durationMilliseconds: durationMilliseconds == freezed
          ? _value.durationMilliseconds
          : durationMilliseconds // ignore: cast_nullable_to_non_nullable
              as int,
      sessionCount: sessionCount == freezed
          ? _value.sessionCount
          : sessionCount // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApplicationHistory implements _ApplicationHistory {
  const _$_ApplicationHistory(
      {required this.applicationId,
      required this.applicationName,
      required this.durationMilliseconds,
      required this.sessionCount,
      this.color});

  factory _$_ApplicationHistory.fromJson(Map<String, dynamic> json) =>
      _$_$_ApplicationHistoryFromJson(json);

  @override
  final String applicationId;
  @override
  final String applicationName;
  @override
  final int durationMilliseconds;
  @override
  final int sessionCount;
  @override
  final String? color;

  @override
  String toString() {
    return 'ApplicationHistory(applicationId: $applicationId, applicationName: $applicationName, durationMilliseconds: $durationMilliseconds, sessionCount: $sessionCount, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApplicationHistory &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.applicationName, applicationName) ||
                const DeepCollectionEquality()
                    .equals(other.applicationName, applicationName)) &&
            (identical(other.durationMilliseconds, durationMilliseconds) ||
                const DeepCollectionEquality().equals(
                    other.durationMilliseconds, durationMilliseconds)) &&
            (identical(other.sessionCount, sessionCount) ||
                const DeepCollectionEquality()
                    .equals(other.sessionCount, sessionCount)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(applicationName) ^
      const DeepCollectionEquality().hash(durationMilliseconds) ^
      const DeepCollectionEquality().hash(sessionCount) ^
      const DeepCollectionEquality().hash(color);

  @JsonKey(ignore: true)
  @override
  _$ApplicationHistoryCopyWith<_ApplicationHistory> get copyWith =>
      __$ApplicationHistoryCopyWithImpl<_ApplicationHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApplicationHistoryToJson(this);
  }
}

abstract class _ApplicationHistory implements ApplicationHistory {
  const factory _ApplicationHistory(
      {required String applicationId,
      required String applicationName,
      required int durationMilliseconds,
      required int sessionCount,
      String? color}) = _$_ApplicationHistory;

  factory _ApplicationHistory.fromJson(Map<String, dynamic> json) =
      _$_ApplicationHistory.fromJson;

  @override
  String get applicationId => throw _privateConstructorUsedError;
  @override
  String get applicationName => throw _privateConstructorUsedError;
  @override
  int get durationMilliseconds => throw _privateConstructorUsedError;
  @override
  int get sessionCount => throw _privateConstructorUsedError;
  @override
  String? get color => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApplicationHistoryCopyWith<_ApplicationHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
