// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'absence_student_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbsenceStudentState _$AbsenceStudentStateFromJson(Map<String, dynamic> json) {
  return _AbsenceStudentState.fromJson(json);
}

/// @nodoc
mixin _$AbsenceStudentState {
  List<Map<String, dynamic>> get students => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbsenceStudentStateCopyWith<AbsenceStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsenceStudentStateCopyWith<$Res> {
  factory $AbsenceStudentStateCopyWith(
          AbsenceStudentState value, $Res Function(AbsenceStudentState) then) =
      _$AbsenceStudentStateCopyWithImpl<$Res>;
  $Res call({List<Map<String, dynamic>> students});
}

/// @nodoc
class _$AbsenceStudentStateCopyWithImpl<$Res>
    implements $AbsenceStudentStateCopyWith<$Res> {
  _$AbsenceStudentStateCopyWithImpl(this._value, this._then);

  final AbsenceStudentState _value;
  // ignore: unused_field
  final $Res Function(AbsenceStudentState) _then;

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
abstract class _$$_AbsenceStudentStateCopyWith<$Res>
    implements $AbsenceStudentStateCopyWith<$Res> {
  factory _$$_AbsenceStudentStateCopyWith(_$_AbsenceStudentState value,
          $Res Function(_$_AbsenceStudentState) then) =
      __$$_AbsenceStudentStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Map<String, dynamic>> students});
}

/// @nodoc
class __$$_AbsenceStudentStateCopyWithImpl<$Res>
    extends _$AbsenceStudentStateCopyWithImpl<$Res>
    implements _$$_AbsenceStudentStateCopyWith<$Res> {
  __$$_AbsenceStudentStateCopyWithImpl(_$_AbsenceStudentState _value,
      $Res Function(_$_AbsenceStudentState) _then)
      : super(_value, (v) => _then(v as _$_AbsenceStudentState));

  @override
  _$_AbsenceStudentState get _value => super._value as _$_AbsenceStudentState;

  @override
  $Res call({
    Object? students = freezed,
  }) {
    return _then(_$_AbsenceStudentState(
      students: students == freezed
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AbsenceStudentState implements _AbsenceStudentState {
  const _$_AbsenceStudentState(
      {final List<Map<String, dynamic>> students = const []})
      : _students = students;

  factory _$_AbsenceStudentState.fromJson(Map<String, dynamic> json) =>
      _$$_AbsenceStudentStateFromJson(json);

  final List<Map<String, dynamic>> _students;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get students {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'AbsenceStudentState(students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbsenceStudentState &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  _$$_AbsenceStudentStateCopyWith<_$_AbsenceStudentState> get copyWith =>
      __$$_AbsenceStudentStateCopyWithImpl<_$_AbsenceStudentState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbsenceStudentStateToJson(
      this,
    );
  }
}

abstract class _AbsenceStudentState implements AbsenceStudentState {
  const factory _AbsenceStudentState(
      {final List<Map<String, dynamic>> students}) = _$_AbsenceStudentState;

  factory _AbsenceStudentState.fromJson(Map<String, dynamic> json) =
      _$_AbsenceStudentState.fromJson;

  @override
  List<Map<String, dynamic>> get students;
  @override
  @JsonKey(ignore: true)
  _$$_AbsenceStudentStateCopyWith<_$_AbsenceStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
