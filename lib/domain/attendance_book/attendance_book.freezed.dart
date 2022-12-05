// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_book.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttendanceBook _$AttendanceBookFromJson(Map<String, dynamic> json) {
  return _AttendanceBook.fromJson(json);
}

/// @nodoc
mixin _$AttendanceBook {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @StudentInAttendanceBookConverter()
  List<StudentInAttendanceBook> get studentInAttendanceBook =>
      throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime? get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceBookCopyWith<AttendanceBook> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceBookCopyWith<$Res> {
  factory $AttendanceBookCopyWith(
          AttendanceBook value, $Res Function(AttendanceBook) then) =
      _$AttendanceBookCopyWithImpl<$Res, AttendanceBook>;
  @useResult
  $Res call(
      {String id,
      String title,
      @StudentInAttendanceBookConverter()
          List<StudentInAttendanceBook> studentInAttendanceBook,
      @DateTimeConverter()
          DateTime? day});
}

/// @nodoc
class _$AttendanceBookCopyWithImpl<$Res, $Val extends AttendanceBook>
    implements $AttendanceBookCopyWith<$Res> {
  _$AttendanceBookCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? studentInAttendanceBook = null,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      studentInAttendanceBook: null == studentInAttendanceBook
          ? _value.studentInAttendanceBook
          : studentInAttendanceBook // ignore: cast_nullable_to_non_nullable
              as List<StudentInAttendanceBook>,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceBookCopyWith<$Res>
    implements $AttendanceBookCopyWith<$Res> {
  factory _$$_AttendanceBookCopyWith(
          _$_AttendanceBook value, $Res Function(_$_AttendanceBook) then) =
      __$$_AttendanceBookCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      @StudentInAttendanceBookConverter()
          List<StudentInAttendanceBook> studentInAttendanceBook,
      @DateTimeConverter()
          DateTime? day});
}

/// @nodoc
class __$$_AttendanceBookCopyWithImpl<$Res>
    extends _$AttendanceBookCopyWithImpl<$Res, _$_AttendanceBook>
    implements _$$_AttendanceBookCopyWith<$Res> {
  __$$_AttendanceBookCopyWithImpl(
      _$_AttendanceBook _value, $Res Function(_$_AttendanceBook) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? studentInAttendanceBook = null,
    Object? day = freezed,
  }) {
    return _then(_$_AttendanceBook(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      studentInAttendanceBook: null == studentInAttendanceBook
          ? _value._studentInAttendanceBook
          : studentInAttendanceBook // ignore: cast_nullable_to_non_nullable
              as List<StudentInAttendanceBook>,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttendanceBook implements _AttendanceBook {
  const _$_AttendanceBook(
      {this.id = '',
      this.title = '',
      @StudentInAttendanceBookConverter()
          final List<StudentInAttendanceBook>
              studentInAttendanceBook = const [],
      @DateTimeConverter()
          this.day})
      : _studentInAttendanceBook = studentInAttendanceBook;

  factory _$_AttendanceBook.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceBookFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String title;
  final List<StudentInAttendanceBook> _studentInAttendanceBook;
  @override
  @JsonKey()
  @StudentInAttendanceBookConverter()
  List<StudentInAttendanceBook> get studentInAttendanceBook {
    if (_studentInAttendanceBook is EqualUnmodifiableListView)
      return _studentInAttendanceBook;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studentInAttendanceBook);
  }

  @override
  @DateTimeConverter()
  final DateTime? day;

  @override
  String toString() {
    return 'AttendanceBook(id: $id, title: $title, studentInAttendanceBook: $studentInAttendanceBook, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttendanceBook &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(
                other._studentInAttendanceBook, _studentInAttendanceBook) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title,
      const DeepCollectionEquality().hash(_studentInAttendanceBook), day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceBookCopyWith<_$_AttendanceBook> get copyWith =>
      __$$_AttendanceBookCopyWithImpl<_$_AttendanceBook>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceBookToJson(
      this,
    );
  }
}

abstract class _AttendanceBook implements AttendanceBook {
  const factory _AttendanceBook(
      {final String id,
      final String title,
      @StudentInAttendanceBookConverter()
          final List<StudentInAttendanceBook> studentInAttendanceBook,
      @DateTimeConverter()
          final DateTime? day}) = _$_AttendanceBook;

  factory _AttendanceBook.fromJson(Map<String, dynamic> json) =
      _$_AttendanceBook.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  @StudentInAttendanceBookConverter()
  List<StudentInAttendanceBook> get studentInAttendanceBook;
  @override
  @DateTimeConverter()
  DateTime? get day;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceBookCopyWith<_$_AttendanceBook> get copyWith =>
      throw _privateConstructorUsedError;
}
