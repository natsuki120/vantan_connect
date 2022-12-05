// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Class _$ClassFromJson(Map<String, dynamic> json) {
  return _Class.fromJson(json);
}

/// @nodoc
mixin _$Class {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get classImgUrl => throw _privateConstructorUsedError;
  String get overView => throw _privateConstructorUsedError;
  @ClassTeacherConverter()
  List<ClassTeacher> get teacher => throw _privateConstructorUsedError;
  @ClassStudentConverter()
  List<ClassStudent> get student => throw _privateConstructorUsedError;
  String get targetSchool => throw _privateConstructorUsedError;
  String get targetStudent => throw _privateConstructorUsedError;
  String get goalPoint => throw _privateConstructorUsedError;
  List<String> get goalRequirements => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  int get frameCount => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get announceTime => throw _privateConstructorUsedError;
  int get timeTable => throw _privateConstructorUsedError;
  @AttendanceBookIdConverter()
  List<AttendanceBookId> get attendanceBook =>
      throw _privateConstructorUsedError;
  List<String> get studentVoice => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  String get baseClass => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassCopyWith<Class> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassCopyWith<$Res> {
  factory $ClassCopyWith(Class value, $Res Function(Class) then) =
      _$ClassCopyWithImpl<$Res, Class>;
  @useResult
  $Res call(
      {String id,
      String name,
      String classImgUrl,
      String overView,
      @ClassTeacherConverter() List<ClassTeacher> teacher,
      @ClassStudentConverter() List<ClassStudent> student,
      String targetSchool,
      String targetStudent,
      String goalPoint,
      List<String> goalRequirements,
      String endTime,
      int frameCount,
      String startTime,
      String announceTime,
      int timeTable,
      @AttendanceBookIdConverter() List<AttendanceBookId> attendanceBook,
      List<String> studentVoice,
      bool isOnline,
      String baseClass});
}

/// @nodoc
class _$ClassCopyWithImpl<$Res, $Val extends Class>
    implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? classImgUrl = null,
    Object? overView = null,
    Object? teacher = null,
    Object? student = null,
    Object? targetSchool = null,
    Object? targetStudent = null,
    Object? goalPoint = null,
    Object? goalRequirements = null,
    Object? endTime = null,
    Object? frameCount = null,
    Object? startTime = null,
    Object? announceTime = null,
    Object? timeTable = null,
    Object? attendanceBook = null,
    Object? studentVoice = null,
    Object? isOnline = null,
    Object? baseClass = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      classImgUrl: null == classImgUrl
          ? _value.classImgUrl
          : classImgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      overView: null == overView
          ? _value.overView
          : overView // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as List<ClassTeacher>,
      student: null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as List<ClassStudent>,
      targetSchool: null == targetSchool
          ? _value.targetSchool
          : targetSchool // ignore: cast_nullable_to_non_nullable
              as String,
      targetStudent: null == targetStudent
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as String,
      goalPoint: null == goalPoint
          ? _value.goalPoint
          : goalPoint // ignore: cast_nullable_to_non_nullable
              as String,
      goalRequirements: null == goalRequirements
          ? _value.goalRequirements
          : goalRequirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      frameCount: null == frameCount
          ? _value.frameCount
          : frameCount // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      announceTime: null == announceTime
          ? _value.announceTime
          : announceTime // ignore: cast_nullable_to_non_nullable
              as String,
      timeTable: null == timeTable
          ? _value.timeTable
          : timeTable // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceBook: null == attendanceBook
          ? _value.attendanceBook
          : attendanceBook // ignore: cast_nullable_to_non_nullable
              as List<AttendanceBookId>,
      studentVoice: null == studentVoice
          ? _value.studentVoice
          : studentVoice // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      baseClass: null == baseClass
          ? _value.baseClass
          : baseClass // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassCopyWith<$Res> implements $ClassCopyWith<$Res> {
  factory _$$_ClassCopyWith(_$_Class value, $Res Function(_$_Class) then) =
      __$$_ClassCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String classImgUrl,
      String overView,
      @ClassTeacherConverter() List<ClassTeacher> teacher,
      @ClassStudentConverter() List<ClassStudent> student,
      String targetSchool,
      String targetStudent,
      String goalPoint,
      List<String> goalRequirements,
      String endTime,
      int frameCount,
      String startTime,
      String announceTime,
      int timeTable,
      @AttendanceBookIdConverter() List<AttendanceBookId> attendanceBook,
      List<String> studentVoice,
      bool isOnline,
      String baseClass});
}

/// @nodoc
class __$$_ClassCopyWithImpl<$Res> extends _$ClassCopyWithImpl<$Res, _$_Class>
    implements _$$_ClassCopyWith<$Res> {
  __$$_ClassCopyWithImpl(_$_Class _value, $Res Function(_$_Class) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? classImgUrl = null,
    Object? overView = null,
    Object? teacher = null,
    Object? student = null,
    Object? targetSchool = null,
    Object? targetStudent = null,
    Object? goalPoint = null,
    Object? goalRequirements = null,
    Object? endTime = null,
    Object? frameCount = null,
    Object? startTime = null,
    Object? announceTime = null,
    Object? timeTable = null,
    Object? attendanceBook = null,
    Object? studentVoice = null,
    Object? isOnline = null,
    Object? baseClass = null,
  }) {
    return _then(_$_Class(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      classImgUrl: null == classImgUrl
          ? _value.classImgUrl
          : classImgUrl // ignore: cast_nullable_to_non_nullable
              as String,
      overView: null == overView
          ? _value.overView
          : overView // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: null == teacher
          ? _value._teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as List<ClassTeacher>,
      student: null == student
          ? _value._student
          : student // ignore: cast_nullable_to_non_nullable
              as List<ClassStudent>,
      targetSchool: null == targetSchool
          ? _value.targetSchool
          : targetSchool // ignore: cast_nullable_to_non_nullable
              as String,
      targetStudent: null == targetStudent
          ? _value.targetStudent
          : targetStudent // ignore: cast_nullable_to_non_nullable
              as String,
      goalPoint: null == goalPoint
          ? _value.goalPoint
          : goalPoint // ignore: cast_nullable_to_non_nullable
              as String,
      goalRequirements: null == goalRequirements
          ? _value._goalRequirements
          : goalRequirements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      frameCount: null == frameCount
          ? _value.frameCount
          : frameCount // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      announceTime: null == announceTime
          ? _value.announceTime
          : announceTime // ignore: cast_nullable_to_non_nullable
              as String,
      timeTable: null == timeTable
          ? _value.timeTable
          : timeTable // ignore: cast_nullable_to_non_nullable
              as int,
      attendanceBook: null == attendanceBook
          ? _value._attendanceBook
          : attendanceBook // ignore: cast_nullable_to_non_nullable
              as List<AttendanceBookId>,
      studentVoice: null == studentVoice
          ? _value._studentVoice
          : studentVoice // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      baseClass: null == baseClass
          ? _value.baseClass
          : baseClass // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Class implements _Class {
  const _$_Class(
      {this.id = '',
      this.name = '',
      this.classImgUrl = '',
      this.overView = '',
      @ClassTeacherConverter()
          final List<ClassTeacher> teacher = const [],
      @ClassStudentConverter()
          final List<ClassStudent> student = const [],
      this.targetSchool = '',
      this.targetStudent = '',
      this.goalPoint = '',
      final List<String> goalRequirements = const [],
      this.endTime = '',
      this.frameCount = 0,
      this.startTime = '',
      this.announceTime = '',
      this.timeTable = 0,
      @AttendanceBookIdConverter()
          final List<AttendanceBookId> attendanceBook = const [],
      final List<String> studentVoice = const <String>[],
      this.isOnline = false,
      this.baseClass = ''})
      : _teacher = teacher,
        _student = student,
        _goalRequirements = goalRequirements,
        _attendanceBook = attendanceBook,
        _studentVoice = studentVoice;

  factory _$_Class.fromJson(Map<String, dynamic> json) =>
      _$$_ClassFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String classImgUrl;
  @override
  @JsonKey()
  final String overView;
  final List<ClassTeacher> _teacher;
  @override
  @JsonKey()
  @ClassTeacherConverter()
  List<ClassTeacher> get teacher {
    if (_teacher is EqualUnmodifiableListView) return _teacher;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teacher);
  }

  final List<ClassStudent> _student;
  @override
  @JsonKey()
  @ClassStudentConverter()
  List<ClassStudent> get student {
    if (_student is EqualUnmodifiableListView) return _student;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_student);
  }

  @override
  @JsonKey()
  final String targetSchool;
  @override
  @JsonKey()
  final String targetStudent;
  @override
  @JsonKey()
  final String goalPoint;
  final List<String> _goalRequirements;
  @override
  @JsonKey()
  List<String> get goalRequirements {
    if (_goalRequirements is EqualUnmodifiableListView)
      return _goalRequirements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goalRequirements);
  }

  @override
  @JsonKey()
  final String endTime;
  @override
  @JsonKey()
  final int frameCount;
  @override
  @JsonKey()
  final String startTime;
  @override
  @JsonKey()
  final String announceTime;
  @override
  @JsonKey()
  final int timeTable;
  final List<AttendanceBookId> _attendanceBook;
  @override
  @JsonKey()
  @AttendanceBookIdConverter()
  List<AttendanceBookId> get attendanceBook {
    if (_attendanceBook is EqualUnmodifiableListView) return _attendanceBook;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attendanceBook);
  }

  final List<String> _studentVoice;
  @override
  @JsonKey()
  List<String> get studentVoice {
    if (_studentVoice is EqualUnmodifiableListView) return _studentVoice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentVoice);
  }

  @override
  @JsonKey()
  final bool isOnline;
  @override
  @JsonKey()
  final String baseClass;

  @override
  String toString() {
    return 'Class(id: $id, name: $name, classImgUrl: $classImgUrl, overView: $overView, teacher: $teacher, student: $student, targetSchool: $targetSchool, targetStudent: $targetStudent, goalPoint: $goalPoint, goalRequirements: $goalRequirements, endTime: $endTime, frameCount: $frameCount, startTime: $startTime, announceTime: $announceTime, timeTable: $timeTable, attendanceBook: $attendanceBook, studentVoice: $studentVoice, isOnline: $isOnline, baseClass: $baseClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Class &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.classImgUrl, classImgUrl) ||
                other.classImgUrl == classImgUrl) &&
            (identical(other.overView, overView) ||
                other.overView == overView) &&
            const DeepCollectionEquality().equals(other._teacher, _teacher) &&
            const DeepCollectionEquality().equals(other._student, _student) &&
            (identical(other.targetSchool, targetSchool) ||
                other.targetSchool == targetSchool) &&
            (identical(other.targetStudent, targetStudent) ||
                other.targetStudent == targetStudent) &&
            (identical(other.goalPoint, goalPoint) ||
                other.goalPoint == goalPoint) &&
            const DeepCollectionEquality()
                .equals(other._goalRequirements, _goalRequirements) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.frameCount, frameCount) ||
                other.frameCount == frameCount) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.announceTime, announceTime) ||
                other.announceTime == announceTime) &&
            (identical(other.timeTable, timeTable) ||
                other.timeTable == timeTable) &&
            const DeepCollectionEquality()
                .equals(other._attendanceBook, _attendanceBook) &&
            const DeepCollectionEquality()
                .equals(other._studentVoice, _studentVoice) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.baseClass, baseClass) ||
                other.baseClass == baseClass));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        classImgUrl,
        overView,
        const DeepCollectionEquality().hash(_teacher),
        const DeepCollectionEquality().hash(_student),
        targetSchool,
        targetStudent,
        goalPoint,
        const DeepCollectionEquality().hash(_goalRequirements),
        endTime,
        frameCount,
        startTime,
        announceTime,
        timeTable,
        const DeepCollectionEquality().hash(_attendanceBook),
        const DeepCollectionEquality().hash(_studentVoice),
        isOnline,
        baseClass
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      __$$_ClassCopyWithImpl<_$_Class>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassToJson(
      this,
    );
  }
}

abstract class _Class implements Class {
  const factory _Class(
      {final String id,
      final String name,
      final String classImgUrl,
      final String overView,
      @ClassTeacherConverter() final List<ClassTeacher> teacher,
      @ClassStudentConverter() final List<ClassStudent> student,
      final String targetSchool,
      final String targetStudent,
      final String goalPoint,
      final List<String> goalRequirements,
      final String endTime,
      final int frameCount,
      final String startTime,
      final String announceTime,
      final int timeTable,
      @AttendanceBookIdConverter() final List<AttendanceBookId> attendanceBook,
      final List<String> studentVoice,
      final bool isOnline,
      final String baseClass}) = _$_Class;

  factory _Class.fromJson(Map<String, dynamic> json) = _$_Class.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get classImgUrl;
  @override
  String get overView;
  @override
  @ClassTeacherConverter()
  List<ClassTeacher> get teacher;
  @override
  @ClassStudentConverter()
  List<ClassStudent> get student;
  @override
  String get targetSchool;
  @override
  String get targetStudent;
  @override
  String get goalPoint;
  @override
  List<String> get goalRequirements;
  @override
  String get endTime;
  @override
  int get frameCount;
  @override
  String get startTime;
  @override
  String get announceTime;
  @override
  int get timeTable;
  @override
  @AttendanceBookIdConverter()
  List<AttendanceBookId> get attendanceBook;
  @override
  List<String> get studentVoice;
  @override
  bool get isOnline;
  @override
  String get baseClass;
  @override
  @JsonKey(ignore: true)
  _$$_ClassCopyWith<_$_Class> get copyWith =>
      throw _privateConstructorUsedError;
}
