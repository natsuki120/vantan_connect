// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attendance_student_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceStudentState _$AttendanceStudentStateFromJson(
    Map<String, dynamic> json) {
  return _AttendanceStudentState.fromJson(json);
}

/// @nodoc
mixin _$AttendanceStudentState {
  List<Map<String, dynamic>> get students => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceStudentStateCopyWith<AttendanceStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceStudentStateCopyWith<$Res> {
  factory $AttendanceStudentStateCopyWith(AttendanceStudentState value,
          $Res Function(AttendanceStudentState) then) =
      _$AttendanceStudentStateCopyWithImpl<$Res>;
  $Res call({List<Map<String, dynamic>> students});
}

/// @nodoc
class _$AttendanceStudentStateCopyWithImpl<$Res>
    implements $AttendanceStudentStateCopyWith<$Res> {
  _$AttendanceStudentStateCopyWithImpl(this._value, this._then);

  final AttendanceStudentState _value;
  // ignore: unused_field
  final $Res Function(AttendanceStudentState) _then;

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
abstract class _$$_AttendanceStudentStateCopyWith<$Res>
    implements $AttendanceStudentStateCopyWith<$Res> {
  factory _$$_AttendanceStudentStateCopyWith(_$_AttendanceStudentState value,
          $Res Function(_$_AttendanceStudentState) then) =
      __$$_AttendanceStudentStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Map<String, dynamic>> students});
}

/// @nodoc
class __$$_AttendanceStudentStateCopyWithImpl<$Res>
    extends _$AttendanceStudentStateCopyWithImpl<$Res>
    implements _$$_AttendanceStudentStateCopyWith<$Res> {
  __$$_AttendanceStudentStateCopyWithImpl(_$_AttendanceStudentState _value,
      $Res Function(_$_AttendanceStudentState) _then)
      : super(_value, (v) => _then(v as _$_AttendanceStudentState));

  @override
  _$_AttendanceStudentState get _value =>
      super._value as _$_AttendanceStudentState;

  @override
  $Res call({
    Object? students = freezed,
  }) {
    return _then(_$_AttendanceStudentState(
      students: students == freezed
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceStudentState implements _AttendanceStudentState {
  const _$_AttendanceStudentState(
      {final List<Map<String, dynamic>> students = const []})
      : _students = students;

  factory _$_AttendanceStudentState.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceStudentStateFromJson(json);

  final List<Map<String, dynamic>> _students;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get students {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'AttendanceStudentState(students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceStudentState &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  _$$_AttendanceStudentStateCopyWith<_$_AttendanceStudentState> get copyWith =>
      __$$_AttendanceStudentStateCopyWithImpl<_$_AttendanceStudentState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceStudentStateToJson(
      this,
    );
  }
}

abstract class _AttendanceStudentState implements AttendanceStudentState {
  const factory _AttendanceStudentState(
      {final List<Map<String, dynamic>> students}) = _$_AttendanceStudentState;

  factory _AttendanceStudentState.fromJson(Map<String, dynamic> json) =
      _$_AttendanceStudentState.fromJson;

  @override
  List<Map<String, dynamic>> get students;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceStudentStateCopyWith<_$_AttendanceStudentState> get copyWith =>
      throw _privateConstructorUsedError;
}
