// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_state_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserStateList _$UserStateListFromJson(Map<String, dynamic> json) {
  return _UserStateList.fromJson(json);
}

/// @nodoc
mixin _$UserStateList {
  List<Map<String, dynamic>> get userStateList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStateListCopyWith<UserStateList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateListCopyWith<$Res> {
  factory $UserStateListCopyWith(
          UserStateList value, $Res Function(UserStateList) then) =
      _$UserStateListCopyWithImpl<$Res>;
  $Res call({List<Map<String, dynamic>> userStateList});
}

/// @nodoc
class _$UserStateListCopyWithImpl<$Res>
    implements $UserStateListCopyWith<$Res> {
  _$UserStateListCopyWithImpl(this._value, this._then);

  final UserStateList _value;
  // ignore: unused_field
  final $Res Function(UserStateList) _then;

  @override
  $Res call({
    Object? userStateList = freezed,
  }) {
    return _then(_value.copyWith(
      userStateList: userStateList == freezed
          ? _value.userStateList
          : userStateList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$$_UserStateListCopyWith<$Res>
    implements $UserStateListCopyWith<$Res> {
  factory _$$_UserStateListCopyWith(
          _$_UserStateList value, $Res Function(_$_UserStateList) then) =
      __$$_UserStateListCopyWithImpl<$Res>;
  @override
  $Res call({List<Map<String, dynamic>> userStateList});
}

/// @nodoc
class __$$_UserStateListCopyWithImpl<$Res>
    extends _$UserStateListCopyWithImpl<$Res>
    implements _$$_UserStateListCopyWith<$Res> {
  __$$_UserStateListCopyWithImpl(
      _$_UserStateList _value, $Res Function(_$_UserStateList) _then)
      : super(_value, (v) => _then(v as _$_UserStateList));

  @override
  _$_UserStateList get _value => super._value as _$_UserStateList;

  @override
  $Res call({
    Object? userStateList = freezed,
  }) {
    return _then(_$_UserStateList(
      userStateList: userStateList == freezed
          ? _value._userStateList
          : userStateList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserStateList implements _UserStateList {
  const _$_UserStateList(
      {final List<Map<String, dynamic>> userStateList = const []})
      : _userStateList = userStateList;

  factory _$_UserStateList.fromJson(Map<String, dynamic> json) =>
      _$$_UserStateListFromJson(json);

  final List<Map<String, dynamic>> _userStateList;
  @override
  @JsonKey()
  List<Map<String, dynamic>> get userStateList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userStateList);
  }

  @override
  String toString() {
    return 'UserStateList(userStateList: $userStateList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStateList &&
            const DeepCollectionEquality()
                .equals(other._userStateList, _userStateList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userStateList));

  @JsonKey(ignore: true)
  @override
  _$$_UserStateListCopyWith<_$_UserStateList> get copyWith =>
      __$$_UserStateListCopyWithImpl<_$_UserStateList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserStateListToJson(
      this,
    );
  }
}

abstract class _UserStateList implements UserStateList {
  const factory _UserStateList(
      {final List<Map<String, dynamic>> userStateList}) = _$_UserStateList;

  factory _UserStateList.fromJson(Map<String, dynamic> json) =
      _$_UserStateList.fromJson;

  @override
  List<Map<String, dynamic>> get userStateList;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateListCopyWith<_$_UserStateList> get copyWith =>
      throw _privateConstructorUsedError;
}
