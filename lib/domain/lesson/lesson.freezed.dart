// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$Lesson {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get classImgUrl => throw _privateConstructorUsedError;
  String get overView => throw _privateConstructorUsedError;
  List<StudentId> get studentIdList => throw _privateConstructorUsedError;
  List<TeacherId> get teacherIdList => throw _privateConstructorUsedError;
  String get targetSchool => throw _privateConstructorUsedError;
  String get targetStudent => throw _privateConstructorUsedError;
  String get goalPoint => throw _privateConstructorUsedError;
  List<String> get goalRequirements => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  int get frameCount => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get announceTime => throw _privateConstructorUsedError;
  int get timeTable => throw _privateConstructorUsedError;
  List<String> get documentId => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  String get baseClass => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get document => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res, Lesson>;
  @useResult
  $Res call(
      {String id,
      String name,
      String classImgUrl,
      String overView,
      List<StudentId> studentIdList,
      List<TeacherId> teacherIdList,
      String targetSchool,
      String targetStudent,
      String goalPoint,
      List<String> goalRequirements,
      String endTime,
      int frameCount,
      String startTime,
      String announceTime,
      int timeTable,
      List<String> documentId,
      bool isOnline,
      String baseClass,
      List<Map<String, dynamic>> document});
}

/// @nodoc
class _$LessonCopyWithImpl<$Res, $Val extends Lesson>
    implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

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
    Object? studentIdList = null,
    Object? teacherIdList = null,
    Object? targetSchool = null,
    Object? targetStudent = null,
    Object? goalPoint = null,
    Object? goalRequirements = null,
    Object? endTime = null,
    Object? frameCount = null,
    Object? startTime = null,
    Object? announceTime = null,
    Object? timeTable = null,
    Object? documentId = null,
    Object? isOnline = null,
    Object? baseClass = null,
    Object? document = null,
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
      studentIdList: null == studentIdList
          ? _value.studentIdList
          : studentIdList // ignore: cast_nullable_to_non_nullable
              as List<StudentId>,
      teacherIdList: null == teacherIdList
          ? _value.teacherIdList
          : teacherIdList // ignore: cast_nullable_to_non_nullable
              as List<TeacherId>,
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
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      baseClass: null == baseClass
          ? _value.baseClass
          : baseClass // ignore: cast_nullable_to_non_nullable
              as String,
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$_LessonCopyWith(_$_Lesson value, $Res Function(_$_Lesson) then) =
      __$$_LessonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String classImgUrl,
      String overView,
      List<StudentId> studentIdList,
      List<TeacherId> teacherIdList,
      String targetSchool,
      String targetStudent,
      String goalPoint,
      List<String> goalRequirements,
      String endTime,
      int frameCount,
      String startTime,
      String announceTime,
      int timeTable,
      List<String> documentId,
      bool isOnline,
      String baseClass,
      List<Map<String, dynamic>> document});
}

/// @nodoc
class __$$_LessonCopyWithImpl<$Res>
    extends _$LessonCopyWithImpl<$Res, _$_Lesson>
    implements _$$_LessonCopyWith<$Res> {
  __$$_LessonCopyWithImpl(_$_Lesson _value, $Res Function(_$_Lesson) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? classImgUrl = null,
    Object? overView = null,
    Object? studentIdList = null,
    Object? teacherIdList = null,
    Object? targetSchool = null,
    Object? targetStudent = null,
    Object? goalPoint = null,
    Object? goalRequirements = null,
    Object? endTime = null,
    Object? frameCount = null,
    Object? startTime = null,
    Object? announceTime = null,
    Object? timeTable = null,
    Object? documentId = null,
    Object? isOnline = null,
    Object? baseClass = null,
    Object? document = null,
  }) {
    return _then(_$_Lesson(
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
      studentIdList: null == studentIdList
          ? _value._studentIdList
          : studentIdList // ignore: cast_nullable_to_non_nullable
              as List<StudentId>,
      teacherIdList: null == teacherIdList
          ? _value._teacherIdList
          : teacherIdList // ignore: cast_nullable_to_non_nullable
              as List<TeacherId>,
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
      documentId: null == documentId
          ? _value._documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      baseClass: null == baseClass
          ? _value.baseClass
          : baseClass // ignore: cast_nullable_to_non_nullable
              as String,
      document: null == document
          ? _value._document
          : document // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lesson implements _Lesson {
  const _$_Lesson(
      {this.id = '',
      this.name = '',
      this.classImgUrl = '',
      this.overView = '',
      final List<StudentId> studentIdList = const [],
      final List<TeacherId> teacherIdList = const [],
      this.targetSchool = '',
      this.targetStudent = '',
      this.goalPoint = '',
      final List<String> goalRequirements = const [],
      this.endTime = '',
      this.frameCount = 0,
      this.startTime = '',
      this.announceTime = '',
      this.timeTable = 0,
      final List<String> documentId = const [],
      this.isOnline = false,
      this.baseClass = '',
      final List<Map<String, dynamic>> document = const []})
      : _studentIdList = studentIdList,
        _teacherIdList = teacherIdList,
        _goalRequirements = goalRequirements,
        _documentId = documentId,
        _document = document;

  factory _$_Lesson.fromJson(Map<String, dynamic> json) =>
      _$$_LessonFromJson(json);

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
  final List<StudentId> _studentIdList;
  @override
  @JsonKey()
  List<StudentId> get studentIdList {
    if (_studentIdList is EqualUnmodifiableListView) return _studentIdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentIdList);
  }

  final List<TeacherId> _teacherIdList;
  @override
  @JsonKey()
  List<TeacherId> get teacherIdList {
    if (_teacherIdList is EqualUnmodifiableListView) return _teacherIdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teacherIdList);
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
  final List<String> _documentId;
  @override
  @JsonKey()
  List<String> get documentId {
    if (_documentId is EqualUnmodifiableListView) return _documentId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documentId);
  }

  @override
  @JsonKey()
  final bool isOnline;
  @override
  @JsonKey()
  final String baseClass;
  final List<Map<String, dynamic>> _document;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get document {
    if (_document is EqualUnmodifiableListView) return _document;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_document);
  }

  @override
  String toString() {
    return 'Lesson(id: $id, name: $name, classImgUrl: $classImgUrl, overView: $overView, studentIdList: $studentIdList, teacherIdList: $teacherIdList, targetSchool: $targetSchool, targetStudent: $targetStudent, goalPoint: $goalPoint, goalRequirements: $goalRequirements, endTime: $endTime, frameCount: $frameCount, startTime: $startTime, announceTime: $announceTime, timeTable: $timeTable, documentId: $documentId, isOnline: $isOnline, baseClass: $baseClass, document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lesson &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.classImgUrl, classImgUrl) ||
                other.classImgUrl == classImgUrl) &&
            (identical(other.overView, overView) ||
                other.overView == overView) &&
            const DeepCollectionEquality()
                .equals(other._studentIdList, _studentIdList) &&
            const DeepCollectionEquality()
                .equals(other._teacherIdList, _teacherIdList) &&
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
                .equals(other._documentId, _documentId) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.baseClass, baseClass) ||
                other.baseClass == baseClass) &&
            const DeepCollectionEquality().equals(other._document, _document));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        classImgUrl,
        overView,
        const DeepCollectionEquality().hash(_studentIdList),
        const DeepCollectionEquality().hash(_teacherIdList),
        targetSchool,
        targetStudent,
        goalPoint,
        const DeepCollectionEquality().hash(_goalRequirements),
        endTime,
        frameCount,
        startTime,
        announceTime,
        timeTable,
        const DeepCollectionEquality().hash(_documentId),
        isOnline,
        baseClass,
        const DeepCollectionEquality().hash(_document)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      __$$_LessonCopyWithImpl<_$_Lesson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonToJson(
      this,
    );
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson(
      {final String id,
      final String name,
      final String classImgUrl,
      final String overView,
      final List<StudentId> studentIdList,
      final List<TeacherId> teacherIdList,
      final String targetSchool,
      final String targetStudent,
      final String goalPoint,
      final List<String> goalRequirements,
      final String endTime,
      final int frameCount,
      final String startTime,
      final String announceTime,
      final int timeTable,
      final List<String> documentId,
      final bool isOnline,
      final String baseClass,
      final List<Map<String, dynamic>> document}) = _$_Lesson;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$_Lesson.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get classImgUrl;
  @override
  String get overView;
  @override
  List<StudentId> get studentIdList;
  @override
  List<TeacherId> get teacherIdList;
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
  List<String> get documentId;
  @override
  bool get isOnline;
  @override
  String get baseClass;
  @override
  List<Map<String, dynamic>> get document;
  @override
  @JsonKey(ignore: true)
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      throw _privateConstructorUsedError;
}
