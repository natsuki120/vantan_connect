// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'class_state_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassStateList _$ClassStateListFromJson(Map<String, dynamic> json) {
  return _ClassStateList.fromJson(json);
}

/// @nodoc
mixin _$ClassStateList {
  List<ClassState> get classList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassStateListCopyWith<ClassStateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassStateListCopyWith<$Res> {
  factory $ClassStateListCopyWith(
          ClassStateList value, $Res Function(ClassStateList) then) =
      _$ClassStateListCopyWithImpl<$Res>;
  $Res call({List<ClassState> classList});
}

/// @nodoc
class _$ClassStateListCopyWithImpl<$Res>
    implements $ClassStateListCopyWith<$Res> {
  _$ClassStateListCopyWithImpl(this._value, this._then);

  final ClassStateList _value;
  // ignore: unused_field
  final $Res Function(ClassStateList) _then;

  @override
  $Res call({
    Object? classList = freezed,
  }) {
    return _then(_value.copyWith(
      classList: classList == freezed
          ? _value.classList
          : classList // ignore: cast_nullable_to_non_nullable
              as List<ClassState>,
    ));
  }
}

/// @nodoc
abstract class _$$_ClassStateListCopyWith<$Res>
    implements $ClassStateListCopyWith<$Res> {
  factory _$$_ClassStateListCopyWith(
          _$_ClassStateList value, $Res Function(_$_ClassStateList) then) =
      __$$_ClassStateListCopyWithImpl<$Res>;
  @override
  $Res call({List<ClassState> classList});
}

/// @nodoc
class __$$_ClassStateListCopyWithImpl<$Res>
    extends _$ClassStateListCopyWithImpl<$Res>
    implements _$$_ClassStateListCopyWith<$Res> {
  __$$_ClassStateListCopyWithImpl(
      _$_ClassStateList _value, $Res Function(_$_ClassStateList) _then)
      : super(_value, (v) => _then(v as _$_ClassStateList));

  @override
  _$_ClassStateList get _value => super._value as _$_ClassStateList;

  @override
  $Res call({
    Object? classList = freezed,
  }) {
    return _then(_$_ClassStateList(
      classList: classList == freezed
          ? _value._classList
          : classList // ignore: cast_nullable_to_non_nullable
              as List<ClassState>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassStateList implements _ClassStateList {
  const _$_ClassStateList(
      {final List<ClassState> classList = const <ClassState>[]})
      : _classList = classList;

  factory _$_ClassStateList.fromJson(Map<String, dynamic> json) =>
      _$$_ClassStateListFromJson(json);

  final List<ClassState> _classList;
  @override
  @JsonKey()
  List<ClassState> get classList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classList);
  }

  @override
  String toString() {
    return 'ClassStateList(classList: $classList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassStateList &&
            const DeepCollectionEquality()
                .equals(other._classList, _classList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_classList));

  @JsonKey(ignore: true)
  @override
  _$$_ClassStateListCopyWith<_$_ClassStateList> get copyWith =>
      __$$_ClassStateListCopyWithImpl<_$_ClassStateList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassStateListToJson(
      this,
    );
  }
}

abstract class _ClassStateList implements ClassStateList {
  const factory _ClassStateList({final List<ClassState> classList}) =
      _$_ClassStateList;

  factory _ClassStateList.fromJson(Map<String, dynamic> json) =
      _$_ClassStateList.fromJson;

  @override
  List<ClassState> get classList;
  @override
  @JsonKey(ignore: true)
  _$$_ClassStateListCopyWith<_$_ClassStateList> get copyWith =>
      throw _privateConstructorUsedError;
}
