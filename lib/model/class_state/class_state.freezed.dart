// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'class_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassState _$ClassStateFromJson(Map<String, dynamic> json) {
  return _ClassState.fromJson(json);
}

/// @nodoc
mixin _$ClassState {
  String get className => throw _privateConstructorUsedError;
  int get attendDay => throw _privateConstructorUsedError;
  int get allTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassStateCopyWith<ClassState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassStateCopyWith<$Res> {
  factory $ClassStateCopyWith(
          ClassState value, $Res Function(ClassState) then) =
      _$ClassStateCopyWithImpl<$Res>;
  $Res call({String className, int attendDay, int allTime});
}

/// @nodoc
class _$ClassStateCopyWithImpl<$Res> implements $ClassStateCopyWith<$Res> {
  _$ClassStateCopyWithImpl(this._value, this._then);

  final ClassState _value;
  // ignore: unused_field
  final $Res Function(ClassState) _then;

  @override
  $Res call({
    Object? className = freezed,
    Object? attendDay = freezed,
    Object? allTime = freezed,
  }) {
    return _then(_value.copyWith(
      className: className == freezed
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      attendDay: attendDay == freezed
          ? _value.attendDay
          : attendDay // ignore: cast_nullable_to_non_nullable
              as int,
      allTime: allTime == freezed
          ? _value.allTime
          : allTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ClassStateCopyWith<$Res>
    implements $ClassStateCopyWith<$Res> {
  factory _$$_ClassStateCopyWith(
          _$_ClassState value, $Res Function(_$_ClassState) then) =
      __$$_ClassStateCopyWithImpl<$Res>;
  @override
  $Res call({String className, int attendDay, int allTime});
}

/// @nodoc
class __$$_ClassStateCopyWithImpl<$Res> extends _$ClassStateCopyWithImpl<$Res>
    implements _$$_ClassStateCopyWith<$Res> {
  __$$_ClassStateCopyWithImpl(
      _$_ClassState _value, $Res Function(_$_ClassState) _then)
      : super(_value, (v) => _then(v as _$_ClassState));

  @override
  _$_ClassState get _value => super._value as _$_ClassState;

  @override
  $Res call({
    Object? className = freezed,
    Object? attendDay = freezed,
    Object? allTime = freezed,
  }) {
    return _then(_$_ClassState(
      className: className == freezed
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      attendDay: attendDay == freezed
          ? _value.attendDay
          : attendDay // ignore: cast_nullable_to_non_nullable
              as int,
      allTime: allTime == freezed
          ? _value.allTime
          : allTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassState implements _ClassState {
  const _$_ClassState(
      {this.className = '', this.attendDay = 0, this.allTime = 0});

  factory _$_ClassState.fromJson(Map<String, dynamic> json) =>
      _$$_ClassStateFromJson(json);

  @override
  @JsonKey()
  final String className;
  @override
  @JsonKey()
  final int attendDay;
  @override
  @JsonKey()
  final int allTime;

  @override
  String toString() {
    return 'ClassState(className: $className, attendDay: $attendDay, allTime: $allTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassState &&
            const DeepCollectionEquality().equals(other.className, className) &&
            const DeepCollectionEquality().equals(other.attendDay, attendDay) &&
            const DeepCollectionEquality().equals(other.allTime, allTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(className),
      const DeepCollectionEquality().hash(attendDay),
      const DeepCollectionEquality().hash(allTime));

  @JsonKey(ignore: true)
  @override
  _$$_ClassStateCopyWith<_$_ClassState> get copyWith =>
      __$$_ClassStateCopyWithImpl<_$_ClassState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassStateToJson(
      this,
    );
  }
}

abstract class _ClassState implements ClassState {
  const factory _ClassState(
      {final String className,
      final int attendDay,
      final int allTime}) = _$_ClassState;

  factory _ClassState.fromJson(Map<String, dynamic> json) =
      _$_ClassState.fromJson;

  @override
  String get className;
  @override
  int get attendDay;
  @override
  int get allTime;
  @override
  @JsonKey(ignore: true)
  _$$_ClassStateCopyWith<_$_ClassState> get copyWith =>
      throw _privateConstructorUsedError;
}
