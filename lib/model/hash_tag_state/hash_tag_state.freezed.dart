// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hash_tag_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HashTagState {
  String get onChangeForm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HashTagStateCopyWith<HashTagState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HashTagStateCopyWith<$Res> {
  factory $HashTagStateCopyWith(
          HashTagState value, $Res Function(HashTagState) then) =
      _$HashTagStateCopyWithImpl<$Res>;
  $Res call({String onChangeForm});
}

/// @nodoc
class _$HashTagStateCopyWithImpl<$Res> implements $HashTagStateCopyWith<$Res> {
  _$HashTagStateCopyWithImpl(this._value, this._then);

  final HashTagState _value;
  // ignore: unused_field
  final $Res Function(HashTagState) _then;

  @override
  $Res call({
    Object? onChangeForm = freezed,
  }) {
    return _then(_value.copyWith(
      onChangeForm: onChangeForm == freezed
          ? _value.onChangeForm
          : onChangeForm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_HashTagStateCopyWith<$Res>
    implements $HashTagStateCopyWith<$Res> {
  factory _$$_HashTagStateCopyWith(
          _$_HashTagState value, $Res Function(_$_HashTagState) then) =
      __$$_HashTagStateCopyWithImpl<$Res>;
  @override
  $Res call({String onChangeForm});
}

/// @nodoc
class __$$_HashTagStateCopyWithImpl<$Res>
    extends _$HashTagStateCopyWithImpl<$Res>
    implements _$$_HashTagStateCopyWith<$Res> {
  __$$_HashTagStateCopyWithImpl(
      _$_HashTagState _value, $Res Function(_$_HashTagState) _then)
      : super(_value, (v) => _then(v as _$_HashTagState));

  @override
  _$_HashTagState get _value => super._value as _$_HashTagState;

  @override
  $Res call({
    Object? onChangeForm = freezed,
  }) {
    return _then(_$_HashTagState(
      onChangeForm: onChangeForm == freezed
          ? _value.onChangeForm
          : onChangeForm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HashTagState implements _HashTagState {
  const _$_HashTagState({this.onChangeForm = ''});

  @override
  @JsonKey()
  final String onChangeForm;

  @override
  String toString() {
    return 'HashTagState(onChangeForm: $onChangeForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HashTagState &&
            const DeepCollectionEquality()
                .equals(other.onChangeForm, onChangeForm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(onChangeForm));

  @JsonKey(ignore: true)
  @override
  _$$_HashTagStateCopyWith<_$_HashTagState> get copyWith =>
      __$$_HashTagStateCopyWithImpl<_$_HashTagState>(this, _$identity);
}

abstract class _HashTagState implements HashTagState {
  const factory _HashTagState({final String onChangeForm}) = _$_HashTagState;

  @override
  String get onChangeForm;
  @override
  @JsonKey(ignore: true)
  _$$_HashTagStateCopyWith<_$_HashTagState> get copyWith =>
      throw _privateConstructorUsedError;
}
