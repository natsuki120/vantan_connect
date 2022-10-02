// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'document_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentState _$DocumentStateFromJson(Map<String, dynamic> json) {
  return _DocumentState.fromJson(json);
}

/// @nodoc
mixin _$DocumentState {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentStateCopyWith<DocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentStateCopyWith<$Res> {
  factory $DocumentStateCopyWith(
          DocumentState value, $Res Function(DocumentState) then) =
      _$DocumentStateCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class _$DocumentStateCopyWithImpl<$Res>
    implements $DocumentStateCopyWith<$Res> {
  _$DocumentStateCopyWithImpl(this._value, this._then);

  final DocumentState _value;
  // ignore: unused_field
  final $Res Function(DocumentState) _then;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DocumentStateCopyWith<$Res>
    implements $DocumentStateCopyWith<$Res> {
  factory _$$_DocumentStateCopyWith(
          _$_DocumentState value, $Res Function(_$_DocumentState) then) =
      __$$_DocumentStateCopyWithImpl<$Res>;
  @override
  $Res call({String text});
}

/// @nodoc
class __$$_DocumentStateCopyWithImpl<$Res>
    extends _$DocumentStateCopyWithImpl<$Res>
    implements _$$_DocumentStateCopyWith<$Res> {
  __$$_DocumentStateCopyWithImpl(
      _$_DocumentState _value, $Res Function(_$_DocumentState) _then)
      : super(_value, (v) => _then(v as _$_DocumentState));

  @override
  _$_DocumentState get _value => super._value as _$_DocumentState;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_DocumentState(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentState implements _DocumentState {
  const _$_DocumentState({this.text = ''});

  factory _$_DocumentState.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentStateFromJson(json);

  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'DocumentState(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentState &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_DocumentStateCopyWith<_$_DocumentState> get copyWith =>
      __$$_DocumentStateCopyWithImpl<_$_DocumentState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentStateToJson(
      this,
    );
  }
}

abstract class _DocumentState implements DocumentState {
  const factory _DocumentState({final String text}) = _$_DocumentState;

  factory _DocumentState.fromJson(Map<String, dynamic> json) =
      _$_DocumentState.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentStateCopyWith<_$_DocumentState> get copyWith =>
      throw _privateConstructorUsedError;
}
