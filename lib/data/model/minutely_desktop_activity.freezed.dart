// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'minutely_desktop_activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MinutelyDesktopActivity _$MinutelyDesktopActivityFromJson(
    Map<String, dynamic> json) {
  return _MinutelyDesktopActivity.fromJson(json);
}

/// @nodoc
class _$MinutelyDesktopActivityTearOff {
  const _$MinutelyDesktopActivityTearOff();

  _MinutelyDesktopActivity call(
      {List<ApplicationSession> applicationSessions =
          const <ApplicationSession>[],
      Map<String, String> applicationNames = const <String, String>{},
      int keyDownCount = 0,
      int mouseMoveCount = 0,
      int scrollCount = 0,
      int clickCount = 0,
      @TimestampConverter() required DateTime begin,
      @TimestampNullableConverter() DateTime? created}) {
    return _MinutelyDesktopActivity(
      applicationSessions: applicationSessions,
      applicationNames: applicationNames,
      keyDownCount: keyDownCount,
      mouseMoveCount: mouseMoveCount,
      scrollCount: scrollCount,
      clickCount: clickCount,
      begin: begin,
      created: created,
    );
  }

  MinutelyDesktopActivity fromJson(Map<String, Object> json) {
    return MinutelyDesktopActivity.fromJson(json);
  }
}

/// @nodoc
const $MinutelyDesktopActivity = _$MinutelyDesktopActivityTearOff();

/// @nodoc
mixin _$MinutelyDesktopActivity {
  List<ApplicationSession> get applicationSessions =>
      throw _privateConstructorUsedError;
  Map<String, String> get applicationNames =>
      throw _privateConstructorUsedError;
  int get keyDownCount => throw _privateConstructorUsedError;
  int get mouseMoveCount => throw _privateConstructorUsedError;
  int get scrollCount => throw _privateConstructorUsedError;
  int get clickCount => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get begin => throw _privateConstructorUsedError;
  @TimestampNullableConverter()
  DateTime? get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MinutelyDesktopActivityCopyWith<MinutelyDesktopActivity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MinutelyDesktopActivityCopyWith<$Res> {
  factory $MinutelyDesktopActivityCopyWith(MinutelyDesktopActivity value,
          $Res Function(MinutelyDesktopActivity) then) =
      _$MinutelyDesktopActivityCopyWithImpl<$Res>;
  $Res call(
      {List<ApplicationSession> applicationSessions,
      Map<String, String> applicationNames,
      int keyDownCount,
      int mouseMoveCount,
      int scrollCount,
      int clickCount,
      @TimestampConverter() DateTime begin,
      @TimestampNullableConverter() DateTime? created});
}

/// @nodoc
class _$MinutelyDesktopActivityCopyWithImpl<$Res>
    implements $MinutelyDesktopActivityCopyWith<$Res> {
  _$MinutelyDesktopActivityCopyWithImpl(this._value, this._then);

  final MinutelyDesktopActivity _value;
  // ignore: unused_field
  final $Res Function(MinutelyDesktopActivity) _then;

  @override
  $Res call({
    Object? applicationSessions = freezed,
    Object? applicationNames = freezed,
    Object? keyDownCount = freezed,
    Object? mouseMoveCount = freezed,
    Object? scrollCount = freezed,
    Object? clickCount = freezed,
    Object? begin = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      applicationSessions: applicationSessions == freezed
          ? _value.applicationSessions
          : applicationSessions // ignore: cast_nullable_to_non_nullable
              as List<ApplicationSession>,
      applicationNames: applicationNames == freezed
          ? _value.applicationNames
          : applicationNames // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      keyDownCount: keyDownCount == freezed
          ? _value.keyDownCount
          : keyDownCount // ignore: cast_nullable_to_non_nullable
              as int,
      mouseMoveCount: mouseMoveCount == freezed
          ? _value.mouseMoveCount
          : mouseMoveCount // ignore: cast_nullable_to_non_nullable
              as int,
      scrollCount: scrollCount == freezed
          ? _value.scrollCount
          : scrollCount // ignore: cast_nullable_to_non_nullable
              as int,
      clickCount: clickCount == freezed
          ? _value.clickCount
          : clickCount // ignore: cast_nullable_to_non_nullable
              as int,
      begin: begin == freezed
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$MinutelyDesktopActivityCopyWith<$Res>
    implements $MinutelyDesktopActivityCopyWith<$Res> {
  factory _$MinutelyDesktopActivityCopyWith(_MinutelyDesktopActivity value,
          $Res Function(_MinutelyDesktopActivity) then) =
      __$MinutelyDesktopActivityCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ApplicationSession> applicationSessions,
      Map<String, String> applicationNames,
      int keyDownCount,
      int mouseMoveCount,
      int scrollCount,
      int clickCount,
      @TimestampConverter() DateTime begin,
      @TimestampNullableConverter() DateTime? created});
}

/// @nodoc
class __$MinutelyDesktopActivityCopyWithImpl<$Res>
    extends _$MinutelyDesktopActivityCopyWithImpl<$Res>
    implements _$MinutelyDesktopActivityCopyWith<$Res> {
  __$MinutelyDesktopActivityCopyWithImpl(_MinutelyDesktopActivity _value,
      $Res Function(_MinutelyDesktopActivity) _then)
      : super(_value, (v) => _then(v as _MinutelyDesktopActivity));

  @override
  _MinutelyDesktopActivity get _value =>
      super._value as _MinutelyDesktopActivity;

  @override
  $Res call({
    Object? applicationSessions = freezed,
    Object? applicationNames = freezed,
    Object? keyDownCount = freezed,
    Object? mouseMoveCount = freezed,
    Object? scrollCount = freezed,
    Object? clickCount = freezed,
    Object? begin = freezed,
    Object? created = freezed,
  }) {
    return _then(_MinutelyDesktopActivity(
      applicationSessions: applicationSessions == freezed
          ? _value.applicationSessions
          : applicationSessions // ignore: cast_nullable_to_non_nullable
              as List<ApplicationSession>,
      applicationNames: applicationNames == freezed
          ? _value.applicationNames
          : applicationNames // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      keyDownCount: keyDownCount == freezed
          ? _value.keyDownCount
          : keyDownCount // ignore: cast_nullable_to_non_nullable
              as int,
      mouseMoveCount: mouseMoveCount == freezed
          ? _value.mouseMoveCount
          : mouseMoveCount // ignore: cast_nullable_to_non_nullable
              as int,
      scrollCount: scrollCount == freezed
          ? _value.scrollCount
          : scrollCount // ignore: cast_nullable_to_non_nullable
              as int,
      clickCount: clickCount == freezed
          ? _value.clickCount
          : clickCount // ignore: cast_nullable_to_non_nullable
              as int,
      begin: begin == freezed
          ? _value.begin
          : begin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MinutelyDesktopActivity extends _MinutelyDesktopActivity {
  const _$_MinutelyDesktopActivity(
      {this.applicationSessions = const <ApplicationSession>[],
      this.applicationNames = const <String, String>{},
      this.keyDownCount = 0,
      this.mouseMoveCount = 0,
      this.scrollCount = 0,
      this.clickCount = 0,
      @TimestampConverter() required this.begin,
      @TimestampNullableConverter() this.created})
      : super._();

  factory _$_MinutelyDesktopActivity.fromJson(Map<String, dynamic> json) =>
      _$_$_MinutelyDesktopActivityFromJson(json);

  @JsonKey(defaultValue: const <ApplicationSession>[])
  @override
  final List<ApplicationSession> applicationSessions;
  @JsonKey(defaultValue: const <String, String>{})
  @override
  final Map<String, String> applicationNames;
  @JsonKey(defaultValue: 0)
  @override
  final int keyDownCount;
  @JsonKey(defaultValue: 0)
  @override
  final int mouseMoveCount;
  @JsonKey(defaultValue: 0)
  @override
  final int scrollCount;
  @JsonKey(defaultValue: 0)
  @override
  final int clickCount;
  @override
  @TimestampConverter()
  final DateTime begin;
  @override
  @TimestampNullableConverter()
  final DateTime? created;

  @override
  String toString() {
    return 'MinutelyDesktopActivity(applicationSessions: $applicationSessions, applicationNames: $applicationNames, keyDownCount: $keyDownCount, mouseMoveCount: $mouseMoveCount, scrollCount: $scrollCount, clickCount: $clickCount, begin: $begin, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MinutelyDesktopActivity &&
            (identical(other.applicationSessions, applicationSessions) ||
                const DeepCollectionEquality()
                    .equals(other.applicationSessions, applicationSessions)) &&
            (identical(other.applicationNames, applicationNames) ||
                const DeepCollectionEquality()
                    .equals(other.applicationNames, applicationNames)) &&
            (identical(other.keyDownCount, keyDownCount) ||
                const DeepCollectionEquality()
                    .equals(other.keyDownCount, keyDownCount)) &&
            (identical(other.mouseMoveCount, mouseMoveCount) ||
                const DeepCollectionEquality()
                    .equals(other.mouseMoveCount, mouseMoveCount)) &&
            (identical(other.scrollCount, scrollCount) ||
                const DeepCollectionEquality()
                    .equals(other.scrollCount, scrollCount)) &&
            (identical(other.clickCount, clickCount) ||
                const DeepCollectionEquality()
                    .equals(other.clickCount, clickCount)) &&
            (identical(other.begin, begin) ||
                const DeepCollectionEquality().equals(other.begin, begin)) &&
            (identical(other.created, created) ||
                const DeepCollectionEquality().equals(other.created, created)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(applicationSessions) ^
      const DeepCollectionEquality().hash(applicationNames) ^
      const DeepCollectionEquality().hash(keyDownCount) ^
      const DeepCollectionEquality().hash(mouseMoveCount) ^
      const DeepCollectionEquality().hash(scrollCount) ^
      const DeepCollectionEquality().hash(clickCount) ^
      const DeepCollectionEquality().hash(begin) ^
      const DeepCollectionEquality().hash(created);

  @JsonKey(ignore: true)
  @override
  _$MinutelyDesktopActivityCopyWith<_MinutelyDesktopActivity> get copyWith =>
      __$MinutelyDesktopActivityCopyWithImpl<_MinutelyDesktopActivity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MinutelyDesktopActivityToJson(this);
  }
}

abstract class _MinutelyDesktopActivity extends MinutelyDesktopActivity {
  const factory _MinutelyDesktopActivity(
          {List<ApplicationSession> applicationSessions,
          Map<String, String> applicationNames,
          int keyDownCount,
          int mouseMoveCount,
          int scrollCount,
          int clickCount,
          @TimestampConverter() required DateTime begin,
          @TimestampNullableConverter() DateTime? created}) =
      _$_MinutelyDesktopActivity;
  const _MinutelyDesktopActivity._() : super._();

  factory _MinutelyDesktopActivity.fromJson(Map<String, dynamic> json) =
      _$_MinutelyDesktopActivity.fromJson;

  @override
  List<ApplicationSession> get applicationSessions =>
      throw _privateConstructorUsedError;
  @override
  Map<String, String> get applicationNames =>
      throw _privateConstructorUsedError;
  @override
  int get keyDownCount => throw _privateConstructorUsedError;
  @override
  int get mouseMoveCount => throw _privateConstructorUsedError;
  @override
  int get scrollCount => throw _privateConstructorUsedError;
  @override
  int get clickCount => throw _privateConstructorUsedError;
  @override
  @TimestampConverter()
  DateTime get begin => throw _privateConstructorUsedError;
  @override
  @TimestampNullableConverter()
  DateTime? get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MinutelyDesktopActivityCopyWith<_MinutelyDesktopActivity> get copyWith =>
      throw _privateConstructorUsedError;
}
