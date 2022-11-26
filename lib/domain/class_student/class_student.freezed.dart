// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'class_student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassStudent _$ClassStudentFromJson(Map<String, dynamic> json) {
  return _ClassStudent.fromJson(json);
}

/// @nodoc
mixin _$ClassStudent {
  @StudentIdConverter()
  StudentId get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassStudentCopyWith<ClassStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassStudentCopyWith<$Res> {
  factory $ClassStudentCopyWith(
          ClassStudent value, $Res Function(ClassStudent) then) =
      _$ClassStudentCopyWithImpl<$Res>;
  $Res call({@StudentIdConverter() StudentId id});

  $StudentIdCopyWith<$Res> get id;
}

/// @nodoc
class _$ClassStudentCopyWithImpl<$Res> implements $ClassStudentCopyWith<$Res> {
  _$ClassStudentCopyWithImpl(this._value, this._then);

  final ClassStudent _value;
  // ignore: unused_field
  final $Res Function(ClassStudent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StudentId,
    ));
  }

  @override
  $StudentIdCopyWith<$Res> get id {
    return $StudentIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }
}

/// @nodoc
abstract class _$$_ClassStudentCopyWith<$Res>
    implements $ClassStudentCopyWith<$Res> {
  factory _$$_ClassStudentCopyWith(
          _$_ClassStudent value, $Res Function(_$_ClassStudent) then) =
      __$$_ClassStudentCopyWithImpl<$Res>;
  @override
  $Res call({@StudentIdConverter() StudentId id});

  @override
  $StudentIdCopyWith<$Res> get id;
}

/// @nodoc
class __$$_ClassStudentCopyWithImpl<$Res>
    extends _$ClassStudentCopyWithImpl<$Res>
    implements _$$_ClassStudentCopyWith<$Res> {
  __$$_ClassStudentCopyWithImpl(
      _$_ClassStudent _value, $Res Function(_$_ClassStudent) _then)
      : super(_value, (v) => _then(v as _$_ClassStudent));

  @override
  _$_ClassStudent get _value => super._value as _$_ClassStudent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_ClassStudent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StudentId,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassStudent implements _ClassStudent {
  const _$_ClassStudent({@StudentIdConverter() required this.id});

  factory _$_ClassStudent.fromJson(Map<String, dynamic> json) =>
      _$$_ClassStudentFromJson(json);

  @override
  @StudentIdConverter()
  final StudentId id;

  @override
  String toString() {
    return 'ClassStudent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassStudent &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$_ClassStudentCopyWith<_$_ClassStudent> get copyWith =>
      __$$_ClassStudentCopyWithImpl<_$_ClassStudent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassStudentToJson(
      this,
    );
  }
}

abstract class _ClassStudent implements ClassStudent {
  const factory _ClassStudent(
      {@StudentIdConverter() required final StudentId id}) = _$_ClassStudent;

  factory _ClassStudent.fromJson(Map<String, dynamic> json) =
      _$_ClassStudent.fromJson;

  @override
  @StudentIdConverter()
  StudentId get id;
  @override
  @JsonKey(ignore: true)
  _$$_ClassStudentCopyWith<_$_ClassStudent> get copyWith =>
      throw _privateConstructorUsedError;
}
