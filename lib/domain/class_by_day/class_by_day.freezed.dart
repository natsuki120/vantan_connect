// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'class_by_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassByDay _$ClassByDayFromJson(Map<String, dynamic> json) {
  return _ClassByDay.fromJson(json);
}

/// @nodoc
mixin _$ClassByDay {
  String get id => throw _privateConstructorUsedError;
  String get className => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime? get day => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime? get announce => throw _privateConstructorUsedError;
  int get timeTable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassByDayCopyWith<ClassByDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassByDayCopyWith<$Res> {
  factory $ClassByDayCopyWith(
          ClassByDay value, $Res Function(ClassByDay) then) =
      _$ClassByDayCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String className,
      @DateTimeConverter() DateTime? day,
      @DateTimeConverter() DateTime? announce,
      int timeTable});
}

/// @nodoc
class _$ClassByDayCopyWithImpl<$Res> implements $ClassByDayCopyWith<$Res> {
  _$ClassByDayCopyWithImpl(this._value, this._then);

  final ClassByDay _value;
  // ignore: unused_field
  final $Res Function(ClassByDay) _then;

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
              as DateTime?,
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
abstract class _$$_ClassByDayCopyWith<$Res>
    implements $ClassByDayCopyWith<$Res> {
  factory _$$_ClassByDayCopyWith(
          _$_ClassByDay value, $Res Function(_$_ClassByDay) then) =
      __$$_ClassByDayCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String className,
      @DateTimeConverter() DateTime? day,
      @DateTimeConverter() DateTime? announce,
      int timeTable});
}

/// @nodoc
class __$$_ClassByDayCopyWithImpl<$Res> extends _$ClassByDayCopyWithImpl<$Res>
    implements _$$_ClassByDayCopyWith<$Res> {
  __$$_ClassByDayCopyWithImpl(
      _$_ClassByDay _value, $Res Function(_$_ClassByDay) _then)
      : super(_value, (v) => _then(v as _$_ClassByDay));

  @override
  _$_ClassByDay get _value => super._value as _$_ClassByDay;

  @override
  $Res call({
    Object? id = freezed,
    Object? className = freezed,
    Object? day = freezed,
    Object? announce = freezed,
    Object? timeTable = freezed,
  }) {
    return _then(_$_ClassByDay(
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
              as DateTime?,
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
class _$_ClassByDay implements _ClassByDay {
  _$_ClassByDay(
      {this.id = '',
      this.className = '',
      @DateTimeConverter() this.day,
      @DateTimeConverter() this.announce,
      this.timeTable = 0});

  factory _$_ClassByDay.fromJson(Map<String, dynamic> json) =>
      _$$_ClassByDayFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String className;
  @override
  @DateTimeConverter()
  final DateTime? day;
  @override
  @DateTimeConverter()
  final DateTime? announce;
  @override
  @JsonKey()
  final int timeTable;

  @override
  String toString() {
    return 'ClassByDay(id: $id, className: $className, day: $day, announce: $announce, timeTable: $timeTable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassByDay &&
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
  _$$_ClassByDayCopyWith<_$_ClassByDay> get copyWith =>
      __$$_ClassByDayCopyWithImpl<_$_ClassByDay>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassByDayToJson(
      this,
    );
  }
}

abstract class _ClassByDay implements ClassByDay {
  factory _ClassByDay(
      {final String id,
      final String className,
      @DateTimeConverter() final DateTime? day,
      @DateTimeConverter() final DateTime? announce,
      final int timeTable}) = _$_ClassByDay;

  factory _ClassByDay.fromJson(Map<String, dynamic> json) =
      _$_ClassByDay.fromJson;

  @override
  String get id;
  @override
  String get className;
  @override
  @DateTimeConverter()
  DateTime? get day;
  @override
  @DateTimeConverter()
  DateTime? get announce;
  @override
  int get timeTable;
  @override
  @JsonKey(ignore: true)
  _$$_ClassByDayCopyWith<_$_ClassByDay> get copyWith =>
      throw _privateConstructorUsedError;
}
