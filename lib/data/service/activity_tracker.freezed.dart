// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'activity_tracker.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActivityTrackerStateTearOff {
  const _$ActivityTrackerStateTearOff();

  _ActivityTrackerState call(
      {Map<DateTime, MinutelyDesktopActivity> activities =
          const <DateTime, MinutelyDesktopActivity>{}}) {
    return _ActivityTrackerState(
      activities: activities,
    );
  }
}

/// @nodoc
const $ActivityTrackerState = _$ActivityTrackerStateTearOff();

/// @nodoc
mixin _$ActivityTrackerState {
  Map<DateTime, MinutelyDesktopActivity> get activities =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityTrackerStateCopyWith<ActivityTrackerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityTrackerStateCopyWith<$Res> {
  factory $ActivityTrackerStateCopyWith(ActivityTrackerState value,
          $Res Function(ActivityTrackerState) then) =
      _$ActivityTrackerStateCopyWithImpl<$Res>;
  $Res call({Map<DateTime, MinutelyDesktopActivity> activities});
}

/// @nodoc
class _$ActivityTrackerStateCopyWithImpl<$Res>
    implements $ActivityTrackerStateCopyWith<$Res> {
  _$ActivityTrackerStateCopyWithImpl(this._value, this._then);

  final ActivityTrackerState _value;
  // ignore: unused_field
  final $Res Function(ActivityTrackerState) _then;

  @override
  $Res call({
    Object? activities = freezed,
  }) {
    return _then(_value.copyWith(
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, MinutelyDesktopActivity>,
    ));
  }
}

/// @nodoc
abstract class _$ActivityTrackerStateCopyWith<$Res>
    implements $ActivityTrackerStateCopyWith<$Res> {
  factory _$ActivityTrackerStateCopyWith(_ActivityTrackerState value,
          $Res Function(_ActivityTrackerState) then) =
      __$ActivityTrackerStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<DateTime, MinutelyDesktopActivity> activities});
}

/// @nodoc
class __$ActivityTrackerStateCopyWithImpl<$Res>
    extends _$ActivityTrackerStateCopyWithImpl<$Res>
    implements _$ActivityTrackerStateCopyWith<$Res> {
  __$ActivityTrackerStateCopyWithImpl(
      _ActivityTrackerState _value, $Res Function(_ActivityTrackerState) _then)
      : super(_value, (v) => _then(v as _ActivityTrackerState));

  @override
  _ActivityTrackerState get _value => super._value as _ActivityTrackerState;

  @override
  $Res call({
    Object? activities = freezed,
  }) {
    return _then(_ActivityTrackerState(
      activities: activities == freezed
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, MinutelyDesktopActivity>,
    ));
  }
}

/// @nodoc

class _$_ActivityTrackerState implements _ActivityTrackerState {
  const _$_ActivityTrackerState(
      {this.activities = const <DateTime, MinutelyDesktopActivity>{}});

  @JsonKey(defaultValue: const <DateTime, MinutelyDesktopActivity>{})
  @override
  final Map<DateTime, MinutelyDesktopActivity> activities;

  @override
  String toString() {
    return 'ActivityTrackerState(activities: $activities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActivityTrackerState &&
            (identical(other.activities, activities) ||
                const DeepCollectionEquality()
                    .equals(other.activities, activities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(activities);

  @JsonKey(ignore: true)
  @override
  _$ActivityTrackerStateCopyWith<_ActivityTrackerState> get copyWith =>
      __$ActivityTrackerStateCopyWithImpl<_ActivityTrackerState>(
          this, _$identity);
}

abstract class _ActivityTrackerState implements ActivityTrackerState {
  const factory _ActivityTrackerState(
          {Map<DateTime, MinutelyDesktopActivity> activities}) =
      _$_ActivityTrackerState;

  @override
  Map<DateTime, MinutelyDesktopActivity> get activities =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActivityTrackerStateCopyWith<_ActivityTrackerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$_CurrentAppTearOff {
  const _$_CurrentAppTearOff();

  __CurrentApp call(
      {required String id, required String name, required DateTime start}) {
    return __CurrentApp(
      id: id,
      name: name,
      start: start,
    );
  }
}

/// @nodoc
const _$CurrentApp = _$_CurrentAppTearOff();

/// @nodoc
mixin _$_CurrentApp {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  _$CurrentAppCopyWith<_CurrentApp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CurrentAppCopyWith<$Res> {
  factory _$CurrentAppCopyWith(
          _CurrentApp value, $Res Function(_CurrentApp) then) =
      __$CurrentAppCopyWithImpl<$Res>;
  $Res call({String id, String name, DateTime start});
}

/// @nodoc
class __$CurrentAppCopyWithImpl<$Res> implements _$CurrentAppCopyWith<$Res> {
  __$CurrentAppCopyWithImpl(this._value, this._then);

  final _CurrentApp _value;
  // ignore: unused_field
  final $Res Function(_CurrentApp) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? start = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$_CurrentAppCopyWith<$Res>
    implements _$CurrentAppCopyWith<$Res> {
  factory _$_CurrentAppCopyWith(
          __CurrentApp value, $Res Function(__CurrentApp) then) =
      __$_CurrentAppCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, DateTime start});
}

/// @nodoc
class __$_CurrentAppCopyWithImpl<$Res> extends __$CurrentAppCopyWithImpl<$Res>
    implements _$_CurrentAppCopyWith<$Res> {
  __$_CurrentAppCopyWithImpl(
      __CurrentApp _value, $Res Function(__CurrentApp) _then)
      : super(_value, (v) => _then(v as __CurrentApp));

  @override
  __CurrentApp get _value => super._value as __CurrentApp;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? start = freezed,
  }) {
    return _then(__CurrentApp(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$__CurrentApp implements __CurrentApp {
  const _$__CurrentApp(
      {required this.id, required this.name, required this.start});

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime start;

  @override
  String toString() {
    return '_CurrentApp(id: $id, name: $name, start: $start)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is __CurrentApp &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(start);

  @JsonKey(ignore: true)
  @override
  _$_CurrentAppCopyWith<__CurrentApp> get copyWith =>
      __$_CurrentAppCopyWithImpl<__CurrentApp>(this, _$identity);
}

abstract class __CurrentApp implements _CurrentApp {
  const factory __CurrentApp(
      {required String id,
      required String name,
      required DateTime start}) = _$__CurrentApp;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  DateTime get start => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$_CurrentAppCopyWith<__CurrentApp> get copyWith =>
      throw _privateConstructorUsedError;
}
