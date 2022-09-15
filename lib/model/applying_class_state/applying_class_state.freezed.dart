// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'applying_class_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApplyingClassState _$ApplyingClassStateFromJson(Map<String, dynamic> json) {
  return _ApplyingClassState.fromJson(json);
}

/// @nodoc
mixin _$ApplyingClassState {
  String get id => throw _privateConstructorUsedError;
  List<String> get className => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get userImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplyingClassStateCopyWith<ApplyingClassState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplyingClassStateCopyWith<$Res> {
  factory $ApplyingClassStateCopyWith(
          ApplyingClassState value, $Res Function(ApplyingClassState) then) =
      _$ApplyingClassStateCopyWithImpl<$Res>;
  $Res call(
      {String id,
      List<String> className,
      String name,
      String uid,
      String userImagePath});
}

/// @nodoc
class _$ApplyingClassStateCopyWithImpl<$Res>
    implements $ApplyingClassStateCopyWith<$Res> {
  _$ApplyingClassStateCopyWithImpl(this._value, this._then);

  final ApplyingClassState _value;
  // ignore: unused_field
  final $Res Function(ApplyingClassState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? className = freezed,
    Object? name = freezed,
    Object? uid = freezed,
    Object? userImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      className: className == freezed
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userImagePath: userImagePath == freezed
          ? _value.userImagePath
          : userImagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ApplyingClassStateCopyWith<$Res>
    implements $ApplyingClassStateCopyWith<$Res> {
  factory _$$_ApplyingClassStateCopyWith(_$_ApplyingClassState value,
          $Res Function(_$_ApplyingClassState) then) =
      __$$_ApplyingClassStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      List<String> className,
      String name,
      String uid,
      String userImagePath});
}

/// @nodoc
class __$$_ApplyingClassStateCopyWithImpl<$Res>
    extends _$ApplyingClassStateCopyWithImpl<$Res>
    implements _$$_ApplyingClassStateCopyWith<$Res> {
  __$$_ApplyingClassStateCopyWithImpl(
      _$_ApplyingClassState _value, $Res Function(_$_ApplyingClassState) _then)
      : super(_value, (v) => _then(v as _$_ApplyingClassState));

  @override
  _$_ApplyingClassState get _value => super._value as _$_ApplyingClassState;

  @override
  $Res call({
    Object? id = freezed,
    Object? className = freezed,
    Object? name = freezed,
    Object? uid = freezed,
    Object? userImagePath = freezed,
  }) {
    return _then(_$_ApplyingClassState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      className: className == freezed
          ? _value._className
          : className // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userImagePath: userImagePath == freezed
          ? _value.userImagePath
          : userImagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApplyingClassState implements _ApplyingClassState {
  const _$_ApplyingClassState(
      {this.id = '',
      final List<String> className = const <String>[],
      this.name = '',
      this.uid = '',
      this.userImagePath = ''})
      : _className = className;

  factory _$_ApplyingClassState.fromJson(Map<String, dynamic> json) =>
      _$$_ApplyingClassStateFromJson(json);

  @override
  @JsonKey()
  final String id;
  final List<String> _className;
  @override
  @JsonKey()
  List<String> get className {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_className);
  }

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String uid;
  @override
  @JsonKey()
  final String userImagePath;

  @override
  String toString() {
    return 'ApplyingClassState(id: $id, className: $className, name: $name, uid: $uid, userImagePath: $userImagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplyingClassState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other._className, _className) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality()
                .equals(other.userImagePath, userImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_className),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(userImagePath));

  @JsonKey(ignore: true)
  @override
  _$$_ApplyingClassStateCopyWith<_$_ApplyingClassState> get copyWith =>
      __$$_ApplyingClassStateCopyWithImpl<_$_ApplyingClassState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplyingClassStateToJson(
      this,
    );
  }
}

abstract class _ApplyingClassState implements ApplyingClassState {
  const factory _ApplyingClassState(
      {final String id,
      final List<String> className,
      final String name,
      final String uid,
      final String userImagePath}) = _$_ApplyingClassState;

  factory _ApplyingClassState.fromJson(Map<String, dynamic> json) =
      _$_ApplyingClassState.fromJson;

  @override
  String get id;
  @override
  List<String> get className;
  @override
  String get name;
  @override
  String get uid;
  @override
  String get userImagePath;
  @override
  @JsonKey(ignore: true)
  _$$_ApplyingClassStateCopyWith<_$_ApplyingClassState> get copyWith =>
      throw _privateConstructorUsedError;
}
