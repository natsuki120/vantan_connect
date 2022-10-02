// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'class_by_day_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassByDayState _$ClassByDayStateFromJson(Map<String, dynamic> json) {
  return _ClassByDayState.fromJson(json);
}

/// @nodoc
mixin _$ClassByDayState {
  String get id => throw _privateConstructorUsedError;
  String get className => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime? get announce => throw _privateConstructorUsedError;
  int get timeTable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassByDayStateCopyWith<ClassByDayState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassByDayStateCopyWith<$Res> {
  factory $ClassByDayStateCopyWith(
          ClassByDayState value, $Res Function(ClassByDayState) then) =
      _$ClassByDayStateCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String className,
      String day,
      @DateTimeConverter() DateTime? announce,
      int timeTable});
}

/// @nodoc
class _$ClassByDayStateCopyWithImpl<$Res>
    implements $ClassByDayStateCopyWith<$Res> {
  _$ClassByDayStateCopyWithImpl(this._value, this._then);

  final ClassByDayState _value;
  // ignore: unused_field
  final $Res Function(ClassByDayState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? className = freezed,
    Object? day = freezed,
    Object? announce = freezed,
    Object? timeTable = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      className: className == freezed
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      announce: announce == freezed
          ? _value.announce
          : announce // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeTable: timeTable == freezed
          ? _value.timeTable
          : timeTable // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ClassByDayStateCopyWith<$Res>
    implements $ClassByDayStateCopyWith<$Res> {
  factory _$$_ClassByDayStateCopyWith(
          _$_ClassByDayState value, $Res Function(_$_ClassByDayState) then) =
      __$$_ClassByDayStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String className,
      String day,
      @DateTimeConverter() DateTime? announce,
      int timeTable});
}

/// @nodoc
class __$$_ClassByDayStateCopyWithImpl<$Res>
    extends _$ClassByDayStateCopyWithImpl<$Res>
    implements _$$_ClassByDayStateCopyWith<$Res> {
  __$$_ClassByDayStateCopyWithImpl(
      _$_ClassByDayState _value, $Res Function(_$_ClassByDayState) _then)
      : super(_value, (v) => _then(v as _$_ClassByDayState));

  @override
  _$_ClassByDayState get _value => super._value as _$_ClassByDayState;

  @override
  $Res call({
    Object? id = freezed,
    Object? className = freezed,
    Object? day = freezed,
    Object? announce = freezed,
    Object? timeTable = freezed,
  }) {
    return _then(_$_ClassByDayState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      className: className == freezed
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      announce: announce == freezed
          ? _value.announce
          : announce // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeTable: timeTable == freezed
          ? _value.timeTable
          : timeTable // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassByDayState implements _ClassByDayState {
  _$_ClassByDayState(
      {this.id = '',
      this.className = '',
      this.day = '',
      @DateTimeConverter() this.announce,
      this.timeTable = 0});

  factory _$_ClassByDayState.fromJson(Map<String, dynamic> json) =>
      _$$_ClassByDayStateFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String className;
  @override
  @JsonKey()
  final String day;
  @override
  @DateTimeConverter()
  final DateTime? announce;
  @override
  @JsonKey()
  final int timeTable;

  @override
  String toString() {
    return 'ClassByDayState(id: $id, className: $className, day: $day, announce: $announce, timeTable: $timeTable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassByDayState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.className, className) &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.announce, announce) &&
            const DeepCollectionEquality().equals(other.timeTable, timeTable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(className),
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(announce),
      const DeepCollectionEquality().hash(timeTable));

  @JsonKey(ignore: true)
  @override
  _$$_ClassByDayStateCopyWith<_$_ClassByDayState> get copyWith =>
      __$$_ClassByDayStateCopyWithImpl<_$_ClassByDayState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassByDayStateToJson(
      this,
    );
  }
}

abstract class _ClassByDayState implements ClassByDayState {
  factory _ClassByDayState(
      {final String id,
      final String className,
      final String day,
      @DateTimeConverter() final DateTime? announce,
      final int timeTable}) = _$_ClassByDayState;

  factory _ClassByDayState.fromJson(Map<String, dynamic> json) =
      _$_ClassByDayState.fromJson;

  @override
  String get id;
  @override
  String get className;
  @override
  String get day;
  @override
  @DateTimeConverter()
  DateTime? get announce;
  @override
  int get timeTable;
  @override
  @JsonKey(ignore: true)
  _$$_ClassByDayStateCopyWith<_$_ClassByDayState> get copyWith =>
      throw _privateConstructorUsedError;
}
