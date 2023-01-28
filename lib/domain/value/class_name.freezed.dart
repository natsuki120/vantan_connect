// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassName _$ClassNameFromJson(Map<String, dynamic> json) {
  return _ClassName.fromJson(json);
}

/// @nodoc
mixin _$ClassName {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassNameCopyWith<ClassName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassNameCopyWith<$Res> {
  factory $ClassNameCopyWith(ClassName value, $Res Function(ClassName) then) =
      _$ClassNameCopyWithImpl<$Res, ClassName>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ClassNameCopyWithImpl<$Res, $Val extends ClassName>
    implements $ClassNameCopyWith<$Res> {
  _$ClassNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassNameCopyWith<$Res> implements $ClassNameCopyWith<$Res> {
  factory _$$_ClassNameCopyWith(
          _$_ClassName value, $Res Function(_$_ClassName) then) =
      __$$_ClassNameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_ClassNameCopyWithImpl<$Res>
    extends _$ClassNameCopyWithImpl<$Res, _$_ClassName>
    implements _$$_ClassNameCopyWith<$Res> {
  __$$_ClassNameCopyWithImpl(
      _$_ClassName _value, $Res Function(_$_ClassName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_ClassName(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassName implements _ClassName {
  const _$_ClassName({this.name = ''});

  factory _$_ClassName.fromJson(Map<String, dynamic> json) =>
      _$$_ClassNameFromJson(json);

  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'ClassName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassName &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassNameCopyWith<_$_ClassName> get copyWith =>
      __$$_ClassNameCopyWithImpl<_$_ClassName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassNameToJson(
      this,
    );
  }
}

abstract class _ClassName implements ClassName {
  const factory _ClassName({final String name}) = _$_ClassName;

  factory _ClassName.fromJson(Map<String, dynamic> json) =
      _$_ClassName.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ClassNameCopyWith<_$_ClassName> get copyWith =>
      throw _privateConstructorUsedError;
}
