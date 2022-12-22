// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentId _$StudentIdFromJson(Map<String, dynamic> json) {
  return _StudentId.fromJson(json);
}

/// @nodoc
mixin _$StudentId {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentIdCopyWith<StudentId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentIdCopyWith<$Res> {
  factory $StudentIdCopyWith(StudentId value, $Res Function(StudentId) then) =
      _$StudentIdCopyWithImpl<$Res, StudentId>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$StudentIdCopyWithImpl<$Res, $Val extends StudentId>
    implements $StudentIdCopyWith<$Res> {
  _$StudentIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentIdCopyWith<$Res> implements $StudentIdCopyWith<$Res> {
  factory _$$_StudentIdCopyWith(
          _$_StudentId value, $Res Function(_$_StudentId) then) =
      __$$_StudentIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_StudentIdCopyWithImpl<$Res>
    extends _$StudentIdCopyWithImpl<$Res, _$_StudentId>
    implements _$$_StudentIdCopyWith<$Res> {
  __$$_StudentIdCopyWithImpl(
      _$_StudentId _value, $Res Function(_$_StudentId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_StudentId(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudentId implements _StudentId {
  const _$_StudentId({this.id = ''});

  factory _$_StudentId.fromJson(Map<String, dynamic> json) =>
      _$$_StudentIdFromJson(json);

  @override
  @JsonKey()
  final String id;

  @override
  String toString() {
    return 'StudentId(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentId &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentIdCopyWith<_$_StudentId> get copyWith =>
      __$$_StudentIdCopyWithImpl<_$_StudentId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentIdToJson(
      this,
    );
  }
}

abstract class _StudentId implements StudentId {
  const factory _StudentId({final String id}) = _$_StudentId;

  factory _StudentId.fromJson(Map<String, dynamic> json) =
      _$_StudentId.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_StudentIdCopyWith<_$_StudentId> get copyWith =>
      throw _privateConstructorUsedError;
}
