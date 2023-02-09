// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentAttendance _$StudentAttendanceFromJson(Map<String, dynamic> json) {
  return _StudentAttendance.fromJson(json);
}

/// @nodoc
mixin _$StudentAttendance {
  Student get student => throw _privateConstructorUsedError;
  Class get classInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentAttendanceCopyWith<StudentAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentAttendanceCopyWith<$Res> {
  factory $StudentAttendanceCopyWith(
          StudentAttendance value, $Res Function(StudentAttendance) then) =
      _$StudentAttendanceCopyWithImpl<$Res, StudentAttendance>;
  @useResult
  $Res call({Student student, Class classInfo});

  $StudentCopyWith<$Res> get student;
  $ClassCopyWith<$Res> get classInfo;
}

/// @nodoc
class _$StudentAttendanceCopyWithImpl<$Res, $Val extends StudentAttendance>
    implements $StudentAttendanceCopyWith<$Res> {
  _$StudentAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
    Object? classInfo = null,
  }) {
    return _then(_value.copyWith(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      classInfo: null == classInfo
          ? _value.classInfo
          : classInfo // ignore: cast_nullable_to_non_nullable
              as Class,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassCopyWith<$Res> get classInfo {
    return $ClassCopyWith<$Res>(_value.classInfo, (value) {
      return _then(_value.copyWith(classInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StudentAttendanceCopyWith<$Res>
    implements $StudentAttendanceCopyWith<$Res> {
  factory _$$_StudentAttendanceCopyWith(_$_StudentAttendance value,
          $Res Function(_$_StudentAttendance) then) =
      __$$_StudentAttendanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Student student, Class classInfo});

  @override
  $StudentCopyWith<$Res> get student;
  @override
  $ClassCopyWith<$Res> get classInfo;
}

/// @nodoc
class __$$_StudentAttendanceCopyWithImpl<$Res>
    extends _$StudentAttendanceCopyWithImpl<$Res, _$_StudentAttendance>
    implements _$$_StudentAttendanceCopyWith<$Res> {
  __$$_StudentAttendanceCopyWithImpl(
      _$_StudentAttendance _value, $Res Function(_$_StudentAttendance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
    Object? classInfo = null,
  }) {
    return _then(_$_StudentAttendance(
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      classInfo: null == classInfo
          ? _value.classInfo
          : classInfo // ignore: cast_nullable_to_non_nullable
              as Class,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentAttendance implements _StudentAttendance {
  const _$_StudentAttendance(
      {this.student = const Student(), this.classInfo = const Class()});

  factory _$_StudentAttendance.fromJson(Map<String, dynamic> json) =>
      _$$_StudentAttendanceFromJson(json);

  @override
  @JsonKey()
  final Student student;
  @override
  @JsonKey()
  final Class classInfo;

  @override
  String toString() {
    return 'StudentAttendance(student: $student, classInfo: $classInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentAttendance &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.classInfo, classInfo) ||
                other.classInfo == classInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, student, classInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentAttendanceCopyWith<_$_StudentAttendance> get copyWith =>
      __$$_StudentAttendanceCopyWithImpl<_$_StudentAttendance>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentAttendanceToJson(
      this,
    );
  }
}

abstract class _StudentAttendance implements StudentAttendance {
  const factory _StudentAttendance(
      {final Student student, final Class classInfo}) = _$_StudentAttendance;

  factory _StudentAttendance.fromJson(Map<String, dynamic> json) =
      _$_StudentAttendance.fromJson;

  @override
  Student get student;
  @override
  Class get classInfo;
  @override
  @JsonKey(ignore: true)
  _$$_StudentAttendanceCopyWith<_$_StudentAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}
