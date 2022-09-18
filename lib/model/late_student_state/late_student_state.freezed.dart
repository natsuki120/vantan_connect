// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'late_student_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LateStudentState _$LateStudentStateFromJson(Map<String, dynamic> json) {
  return _LateStudentState.fromJson(json);
}

/// @nodoc
mixin _$LateStudentState {
  List<Map<String, dynamic>> get students => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LateStudentStateCopyWith<LateStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LateStudentStateCopyWith<$Res> {
  factory $LateStudentStateCopyWith(
          LateStudentState value, $Res Function(LateStudentState) then) =
      _$LateStudentStateCopyWithImpl<$Res>;
  $Res call({List<Map<String, dynamic>> students});
}

/// @nodoc
class _$LateStudentStateCopyWithImpl<$Res>
    implements $LateStudentStateCopyWith<$Res> {
  _$LateStudentStateCopyWithImpl(this._value, this._then);

  final LateStudentState _value;
  // ignore: unused_field
  final $Res Function(LateStudentState) _then;

  @override
  $Res call({
    Object? students = freezed,
  }) {
    return _then(_value.copyWith(
      students: students == freezed
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$$_LateStudentStateCopyWith<$Res>
    implements $LateStudentStateCopyWith<$Res> {
  factory _$$_LateStudentStateCopyWith(
          _$_LateStudentState value, $Res Function(_$_LateStudentState) then) =
      __$$_LateStudentStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Map<String, dynamic>> students});
}

/// @nodoc
class __$$_LateStudentStateCopyWithImpl<$Res>
    extends _$LateStudentStateCopyWithImpl<$Res>
    implements _$$_LateStudentStateCopyWith<$Res> {
  __$$_LateStudentStateCopyWithImpl(
      _$_LateStudentState _value, $Res Function(_$_LateStudentState) _then)
      : super(_value, (v) => _then(v as _$_LateStudentState));

  @override
  _$_LateStudentState get _value => super._value as _$_LateStudentState;

  @override
  $Res call({
    Object? students = freezed,
  }) {
    return _then(_$_LateStudentState(
      students: students == freezed
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LateStudentState implements _LateStudentState {
  const _$_LateStudentState(
      {final List<Map<String, dynamic>> students = const []})
      : _students = students;

  factory _$_LateStudentState.fromJson(Map<String, dynamic> json) =>
      _$$_LateStudentStateFromJson(json);

  final List<Map<String, dynamic>> _students;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get students {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'LateStudentState(students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LateStudentState &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  _$$_LateStudentStateCopyWith<_$_LateStudentState> get copyWith =>
      __$$_LateStudentStateCopyWithImpl<_$_LateStudentState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LateStudentStateToJson(
      this,
    );
  }
}

abstract class _LateStudentState implements LateStudentState {
  const factory _LateStudentState({final List<Map<String, dynamic>> students}) =
      _$_LateStudentState;

  factory _LateStudentState.fromJson(Map<String, dynamic> json) =
      _$_LateStudentState.fromJson;

  @override
  List<Map<String, dynamic>> get students;
  @override
  @JsonKey(ignore: true)
  _$$_LateStudentStateCopyWith<_$_LateStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
