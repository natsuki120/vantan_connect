// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_and_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassAndDocument _$ClassAndDocumentFromJson(Map<String, dynamic> json) {
  return _ClassAndDocument.fromJson(json);
}

/// @nodoc
mixin _$ClassAndDocument {
  Class get classInfo => throw _privateConstructorUsedError;
  ClassDocument get classDocument => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassAndDocumentCopyWith<ClassAndDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassAndDocumentCopyWith<$Res> {
  factory $ClassAndDocumentCopyWith(
          ClassAndDocument value, $Res Function(ClassAndDocument) then) =
      _$ClassAndDocumentCopyWithImpl<$Res, ClassAndDocument>;
  @useResult
  $Res call({Class classInfo, ClassDocument classDocument});

  $ClassCopyWith<$Res> get classInfo;
  $ClassDocumentCopyWith<$Res> get classDocument;
}

/// @nodoc
class _$ClassAndDocumentCopyWithImpl<$Res, $Val extends ClassAndDocument>
    implements $ClassAndDocumentCopyWith<$Res> {
  _$ClassAndDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classInfo = null,
    Object? classDocument = null,
  }) {
    return _then(_value.copyWith(
      classInfo: null == classInfo
          ? _value.classInfo
          : classInfo // ignore: cast_nullable_to_non_nullable
              as Class,
      classDocument: null == classDocument
          ? _value.classDocument
          : classDocument // ignore: cast_nullable_to_non_nullable
              as ClassDocument,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassCopyWith<$Res> get classInfo {
    return $ClassCopyWith<$Res>(_value.classInfo, (value) {
      return _then(_value.copyWith(classInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassDocumentCopyWith<$Res> get classDocument {
    return $ClassDocumentCopyWith<$Res>(_value.classDocument, (value) {
      return _then(_value.copyWith(classDocument: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClassAndDocumentCopyWith<$Res>
    implements $ClassAndDocumentCopyWith<$Res> {
  factory _$$_ClassAndDocumentCopyWith(
          _$_ClassAndDocument value, $Res Function(_$_ClassAndDocument) then) =
      __$$_ClassAndDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Class classInfo, ClassDocument classDocument});

  @override
  $ClassCopyWith<$Res> get classInfo;
  @override
  $ClassDocumentCopyWith<$Res> get classDocument;
}

/// @nodoc
class __$$_ClassAndDocumentCopyWithImpl<$Res>
    extends _$ClassAndDocumentCopyWithImpl<$Res, _$_ClassAndDocument>
    implements _$$_ClassAndDocumentCopyWith<$Res> {
  __$$_ClassAndDocumentCopyWithImpl(
      _$_ClassAndDocument _value, $Res Function(_$_ClassAndDocument) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classInfo = null,
    Object? classDocument = null,
  }) {
    return _then(_$_ClassAndDocument(
      classInfo: null == classInfo
          ? _value.classInfo
          : classInfo // ignore: cast_nullable_to_non_nullable
              as Class,
      classDocument: null == classDocument
          ? _value.classDocument
          : classDocument // ignore: cast_nullable_to_non_nullable
              as ClassDocument,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassAndDocument implements _ClassAndDocument {
  const _$_ClassAndDocument(
      {this.classInfo = const Class(),
      this.classDocument = const ClassDocument()});

  factory _$_ClassAndDocument.fromJson(Map<String, dynamic> json) =>
      _$$_ClassAndDocumentFromJson(json);

  @override
  @JsonKey()
  final Class classInfo;
  @override
  @JsonKey()
  final ClassDocument classDocument;

  @override
  String toString() {
    return 'ClassAndDocument(classInfo: $classInfo, classDocument: $classDocument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassAndDocument &&
            (identical(other.classInfo, classInfo) ||
                other.classInfo == classInfo) &&
            (identical(other.classDocument, classDocument) ||
                other.classDocument == classDocument));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, classInfo, classDocument);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassAndDocumentCopyWith<_$_ClassAndDocument> get copyWith =>
      __$$_ClassAndDocumentCopyWithImpl<_$_ClassAndDocument>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassAndDocumentToJson(
      this,
    );
  }
}

abstract class _ClassAndDocument implements ClassAndDocument {
  const factory _ClassAndDocument(
      {final Class classInfo,
      final ClassDocument classDocument}) = _$_ClassAndDocument;

  factory _ClassAndDocument.fromJson(Map<String, dynamic> json) =
      _$_ClassAndDocument.fromJson;

  @override
  Class get classInfo;
  @override
  ClassDocument get classDocument;
  @override
  @JsonKey(ignore: true)
  _$$_ClassAndDocumentCopyWith<_$_ClassAndDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
