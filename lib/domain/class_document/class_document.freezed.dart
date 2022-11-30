// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  @DateTimeConverter()
  DateTime? get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassDocumentCopyWith<ClassDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassDocumentCopyWith<$Res> {
  factory $ClassDocumentCopyWith(
          ClassDocument value, $Res Function(ClassDocument) then) =
      _$ClassDocumentCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String description,
      int count,
      @DateTimeConverter() DateTime? day});
}

/// @nodoc
class _$ClassDocumentCopyWithImpl<$Res>
    implements $ClassDocumentCopyWith<$Res> {
  _$ClassDocumentCopyWithImpl(this._value, this._then);

  final ClassDocument _value;
  // ignore: unused_field
  final $Res Function(ClassDocument) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? count = freezed,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_ClassDocumentCopyWith<$Res>
    implements $ClassDocumentCopyWith<$Res> {
  factory _$$_ClassDocumentCopyWith(
          _$_ClassDocument value, $Res Function(_$_ClassDocument) then) =
      __$$_ClassDocumentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String description,
      int count,
      @DateTimeConverter() DateTime? day});
}

/// @nodoc
class __$$_ClassDocumentCopyWithImpl<$Res>
    extends _$ClassDocumentCopyWithImpl<$Res>
    implements _$$_ClassDocumentCopyWith<$Res> {
  __$$_ClassDocumentCopyWithImpl(
      _$_ClassDocument _value, $Res Function(_$_ClassDocument) _then)
      : super(_value, (v) => _then(v as _$_ClassDocument));

  @override
  _$_ClassDocument get _value => super._value as _$_ClassDocument;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? count = freezed,
    Object? day = freezed,
  }) {
    return _then(_$_ClassDocument(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      @DateTimeConverter() this.day});

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
  @DateTimeConverter()
  final DateTime? day;

  @override
  String toString() {
    return 'ClassDocument(title: $title, description: $description, count: $count, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassDocument &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
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
      @DateTimeConverter() final DateTime? day}) = _$_ClassDocument;

  factory _ClassDocument.fromJson(Map<String, dynamic> json) =
      _$_ClassDocument.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int get count;
  @override
  @DateTimeConverter()
  DateTime? get day;
  @override
  @JsonKey(ignore: true)
  _$$_ClassDocumentCopyWith<_$_ClassDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
