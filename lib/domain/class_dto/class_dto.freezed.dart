// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassDto _$ClassDtoFromJson(Map<String, dynamic> json) {
  return _ClassDto.fromJson(json);
}

/// @nodoc
mixin _$ClassDto {
  String get id => throw _privateConstructorUsedError;
  Class? get classInfo => throw _privateConstructorUsedError;
  AttendanceBook? get attendanceBook => throw _privateConstructorUsedError;
  List<Teacher>? get teacher => throw _privateConstructorUsedError;
  List<Student>? get student => throw _privateConstructorUsedError;
  List<ClassDocument>? get document => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassDtoCopyWith<ClassDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassDtoCopyWith<$Res> {
  factory $ClassDtoCopyWith(ClassDto value, $Res Function(ClassDto) then) =
      _$ClassDtoCopyWithImpl<$Res, ClassDto>;
  @useResult
  $Res call(
      {String id,
      Class? classInfo,
      AttendanceBook? attendanceBook,
      List<Teacher>? teacher,
      List<Student>? student,
      List<ClassDocument>? document});

  $ClassCopyWith<$Res>? get classInfo;
  $AttendanceBookCopyWith<$Res>? get attendanceBook;
}

/// @nodoc
class _$ClassDtoCopyWithImpl<$Res, $Val extends ClassDto>
    implements $ClassDtoCopyWith<$Res> {
  _$ClassDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? classInfo = freezed,
    Object? attendanceBook = freezed,
    Object? teacher = freezed,
    Object? student = freezed,
    Object? document = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      classInfo: freezed == classInfo
          ? _value.classInfo
          : classInfo // ignore: cast_nullable_to_non_nullable
              as Class?,
      attendanceBook: freezed == attendanceBook
          ? _value.attendanceBook
          : attendanceBook // ignore: cast_nullable_to_non_nullable
              as AttendanceBook?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as List<Teacher>?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as List<Student>?,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as List<ClassDocument>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassCopyWith<$Res>? get classInfo {
    if (_value.classInfo == null) {
      return null;
    }

    return $ClassCopyWith<$Res>(_value.classInfo!, (value) {
      return _then(_value.copyWith(classInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendanceBookCopyWith<$Res>? get attendanceBook {
    if (_value.attendanceBook == null) {
      return null;
    }

    return $AttendanceBookCopyWith<$Res>(_value.attendanceBook!, (value) {
      return _then(_value.copyWith(attendanceBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClassDtoCopyWith<$Res> implements $ClassDtoCopyWith<$Res> {
  factory _$$_ClassDtoCopyWith(
          _$_ClassDto value, $Res Function(_$_ClassDto) then) =
      __$$_ClassDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Class? classInfo,
      AttendanceBook? attendanceBook,
      List<Teacher>? teacher,
      List<Student>? student,
      List<ClassDocument>? document});

  @override
  $ClassCopyWith<$Res>? get classInfo;
  @override
  $AttendanceBookCopyWith<$Res>? get attendanceBook;
}

/// @nodoc
class __$$_ClassDtoCopyWithImpl<$Res>
    extends _$ClassDtoCopyWithImpl<$Res, _$_ClassDto>
    implements _$$_ClassDtoCopyWith<$Res> {
  __$$_ClassDtoCopyWithImpl(
      _$_ClassDto _value, $Res Function(_$_ClassDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? classInfo = freezed,
    Object? attendanceBook = freezed,
    Object? teacher = freezed,
    Object? student = freezed,
    Object? document = freezed,
  }) {
    return _then(_$_ClassDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      classInfo: freezed == classInfo
          ? _value.classInfo
          : classInfo // ignore: cast_nullable_to_non_nullable
              as Class?,
      attendanceBook: freezed == attendanceBook
          ? _value.attendanceBook
          : attendanceBook // ignore: cast_nullable_to_non_nullable
              as AttendanceBook?,
      teacher: freezed == teacher
          ? _value._teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as List<Teacher>?,
      student: freezed == student
          ? _value._student
          : student // ignore: cast_nullable_to_non_nullable
              as List<Student>?,
      document: freezed == document
          ? _value._document
          : document // ignore: cast_nullable_to_non_nullable
              as List<ClassDocument>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ClassDto implements _ClassDto {
  const _$_ClassDto(
      {this.id = '',
      this.classInfo,
      this.attendanceBook,
      final List<Teacher>? teacher,
      final List<Student>? student,
      final List<ClassDocument>? document})
      : _teacher = teacher,
        _student = student,
        _document = document;

  factory _$_ClassDto.fromJson(Map<String, dynamic> json) =>
      _$$_ClassDtoFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final Class? classInfo;
  @override
  final AttendanceBook? attendanceBook;
  final List<Teacher>? _teacher;
  @override
  List<Teacher>? get teacher {
    final value = _teacher;
    if (value == null) return null;
    if (_teacher is EqualUnmodifiableListView) return _teacher;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Student>? _student;
  @override
  List<Student>? get student {
    final value = _student;
    if (value == null) return null;
    if (_student is EqualUnmodifiableListView) return _student;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ClassDocument>? _document;
  @override
  List<ClassDocument>? get document {
    final value = _document;
    if (value == null) return null;
    if (_document is EqualUnmodifiableListView) return _document;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClassDto(id: $id, classInfo: $classInfo, attendanceBook: $attendanceBook, teacher: $teacher, student: $student, document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.classInfo, classInfo) ||
                other.classInfo == classInfo) &&
            (identical(other.attendanceBook, attendanceBook) ||
                other.attendanceBook == attendanceBook) &&
            const DeepCollectionEquality().equals(other._teacher, _teacher) &&
            const DeepCollectionEquality().equals(other._student, _student) &&
            const DeepCollectionEquality().equals(other._document, _document));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      classInfo,
      attendanceBook,
      const DeepCollectionEquality().hash(_teacher),
      const DeepCollectionEquality().hash(_student),
      const DeepCollectionEquality().hash(_document));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassDtoCopyWith<_$_ClassDto> get copyWith =>
      __$$_ClassDtoCopyWithImpl<_$_ClassDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassDtoToJson(
      this,
    );
  }
}

abstract class _ClassDto implements ClassDto {
  const factory _ClassDto(
      {final String id,
      final Class? classInfo,
      final AttendanceBook? attendanceBook,
      final List<Teacher>? teacher,
      final List<Student>? student,
      final List<ClassDocument>? document}) = _$_ClassDto;

  factory _ClassDto.fromJson(Map<String, dynamic> json) = _$_ClassDto.fromJson;

  @override
  String get id;
  @override
  Class? get classInfo;
  @override
  AttendanceBook? get attendanceBook;
  @override
  List<Teacher>? get teacher;
  @override
  List<Student>? get student;
  @override
  List<ClassDocument>? get document;
  @override
  @JsonKey(ignore: true)
  _$$_ClassDtoCopyWith<_$_ClassDto> get copyWith =>
      throw _privateConstructorUsedError;
}
