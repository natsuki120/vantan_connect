// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassDocument _$ClassDocumentFromJson(Map<String, dynamic> json) {
  return _ClassDocument.fromJson(json);
}

/// @nodoc
mixin _$ClassDocument {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  String get className => throw _privateConstructorUsedError;
  String get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassDocumentCopyWith<ClassDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassDocumentCopyWith<$Res> {
  factory $ClassDocumentCopyWith(
          ClassDocument value, $Res Function(ClassDocument) then) =
      _$ClassDocumentCopyWithImpl<$Res, ClassDocument>;
  @useResult
  $Res call(
      {String title,
      String description,
      int count,
      String className,
      String day});
}

/// @nodoc
class _$ClassDocumentCopyWithImpl<$Res, $Val extends ClassDocument>
    implements $ClassDocumentCopyWith<$Res> {
  _$ClassDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? count = null,
    Object? className = null,
    Object? day = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassDocumentCopyWith<$Res>
    implements $ClassDocumentCopyWith<$Res> {
  factory _$$_ClassDocumentCopyWith(
          _$_ClassDocument value, $Res Function(_$_ClassDocument) then) =
      __$$_ClassDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      int count,
      String className,
      String day});
}

/// @nodoc
class __$$_ClassDocumentCopyWithImpl<$Res>
    extends _$ClassDocumentCopyWithImpl<$Res, _$_ClassDocument>
    implements _$$_ClassDocumentCopyWith<$Res> {
  __$$_ClassDocumentCopyWithImpl(
      _$_ClassDocument _value, $Res Function(_$_ClassDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? count = null,
    Object? className = null,
    Object? day = null,
  }) {
    return _then(_$_ClassDocument(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassDocument implements _ClassDocument {
  const _$_ClassDocument(
      {this.title = '',
      this.description = '',
      this.count = 0,
      this.className = '',
      this.day = ''});

  factory _$_ClassDocument.fromJson(Map<String, dynamic> json) =>
      _$$_ClassDocumentFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final int count;
  @override
  @JsonKey()
  final String className;
  @override
  @JsonKey()
  final String day;

  @override
  String toString() {
    return 'ClassDocument(title: $title, description: $description, count: $count, className: $className, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassDocument &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, count, className, day);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassDocumentCopyWith<_$_ClassDocument> get copyWith =>
      __$$_ClassDocumentCopyWithImpl<_$_ClassDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassDocumentToJson(
      this,
    );
  }
}

abstract class _ClassDocument implements ClassDocument {
  const factory _ClassDocument(
      {final String title,
      final String description,
      final int count,
      final String className,
      final String day}) = _$_ClassDocument;

  factory _ClassDocument.fromJson(Map<String, dynamic> json) =
      _$_ClassDocument.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int get count;
  @override
  String get className;
  @override
  String get day;
  @override
  @JsonKey(ignore: true)
  _$$_ClassDocumentCopyWith<_$_ClassDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
