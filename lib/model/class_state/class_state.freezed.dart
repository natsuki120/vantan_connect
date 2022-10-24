// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'class_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassState _$ClassStateFromJson(Map<String, dynamic> json) {
  return _ClassState.fromJson(json);
}

/// @nodoc
mixin _$ClassState {
  String get className => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  int get frameCount => throw _privateConstructorUsedError;
  List<String> get selectableBaseClass => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get announceTime => throw _privateConstructorUsedError;
  List<String> get teacher => throw _privateConstructorUsedError;
  int get timeTable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassStateCopyWith<ClassState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassStateCopyWith<$Res> {
  factory $ClassStateCopyWith(
          ClassState value, $Res Function(ClassState) then) =
      _$ClassStateCopyWithImpl<$Res>;
  $Res call(
      {String className,
      String endTime,
      int frameCount,
      List<String> selectableBaseClass,
      String startTime,
      String announceTime,
      List<String> teacher,
      int timeTable});
}

/// @nodoc
class _$ClassStateCopyWithImpl<$Res> implements $ClassStateCopyWith<$Res> {
  _$ClassStateCopyWithImpl(this._value, this._then);

  final ClassState _value;
  // ignore: unused_field
  final $Res Function(ClassState) _then;

  @override
  $Res call({
    Object? className = freezed,
    Object? endTime = freezed,
    Object? frameCount = freezed,
    Object? selectableBaseClass = freezed,
    Object? startTime = freezed,
    Object? announceTime = freezed,
    Object? teacher = freezed,
    Object? timeTable = freezed,
  }) {
    return _then(_value.copyWith(
      className: className == freezed
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      frameCount: frameCount == freezed
          ? _value.frameCount
          : frameCount // ignore: cast_nullable_to_non_nullable
              as int,
      selectableBaseClass: selectableBaseClass == freezed
          ? _value.selectableBaseClass
          : selectableBaseClass // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      announceTime: announceTime == freezed
          ? _value.announceTime
          : announceTime // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: teacher == freezed
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeTable: timeTable == freezed
          ? _value.timeTable
          : timeTable // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ClassStateCopyWith<$Res>
    implements $ClassStateCopyWith<$Res> {
  factory _$$_ClassStateCopyWith(
          _$_ClassState value, $Res Function(_$_ClassState) then) =
      __$$_ClassStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String className,
      String endTime,
      int frameCount,
      List<String> selectableBaseClass,
      String startTime,
      String announceTime,
      List<String> teacher,
      int timeTable});
}

/// @nodoc
class __$$_ClassStateCopyWithImpl<$Res> extends _$ClassStateCopyWithImpl<$Res>
    implements _$$_ClassStateCopyWith<$Res> {
  __$$_ClassStateCopyWithImpl(
      _$_ClassState _value, $Res Function(_$_ClassState) _then)
      : super(_value, (v) => _then(v as _$_ClassState));

  @override
  _$_ClassState get _value => super._value as _$_ClassState;

  @override
  $Res call({
    Object? className = freezed,
    Object? endTime = freezed,
    Object? frameCount = freezed,
    Object? selectableBaseClass = freezed,
    Object? startTime = freezed,
    Object? announceTime = freezed,
    Object? teacher = freezed,
    Object? timeTable = freezed,
  }) {
    return _then(_$_ClassState(
      className: className == freezed
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      frameCount: frameCount == freezed
          ? _value.frameCount
          : frameCount // ignore: cast_nullable_to_non_nullable
              as int,
      selectableBaseClass: selectableBaseClass == freezed
          ? _value._selectableBaseClass
          : selectableBaseClass // ignore: cast_nullable_to_non_nullable
              as List<String>,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      announceTime: announceTime == freezed
          ? _value.announceTime
          : announceTime // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: teacher == freezed
          ? _value._teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeTable: timeTable == freezed
          ? _value.timeTable
          : timeTable // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClassState implements _ClassState {
  const _$_ClassState(
      {this.className = '',
      this.endTime = '',
      this.frameCount = 0,
      final List<String> selectableBaseClass = const <String>[],
      this.startTime = '',
      this.announceTime = '',
      final List<String> teacher = const <String>[],
      this.timeTable = 0})
      : _selectableBaseClass = selectableBaseClass,
        _teacher = teacher;

  factory _$_ClassState.fromJson(Map<String, dynamic> json) =>
      _$$_ClassStateFromJson(json);

  @override
  @JsonKey()
  final String className;
  @override
  @JsonKey()
  final String endTime;
  @override
  @JsonKey()
  final int frameCount;
  final List<String> _selectableBaseClass;
  @override
  @JsonKey()
  List<String> get selectableBaseClass {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectableBaseClass);
  }

  @override
  @JsonKey()
  final String startTime;
  @override
  @JsonKey()
  final String announceTime;
  final List<String> _teacher;
  @override
  @JsonKey()
  List<String> get teacher {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teacher);
  }

  @override
  @JsonKey()
  final int timeTable;

  @override
  String toString() {
    return 'ClassState(className: $className, endTime: $endTime, frameCount: $frameCount, selectableBaseClass: $selectableBaseClass, startTime: $startTime, announceTime: $announceTime, teacher: $teacher, timeTable: $timeTable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClassState &&
            const DeepCollectionEquality().equals(other.className, className) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality()
                .equals(other.frameCount, frameCount) &&
            const DeepCollectionEquality()
                .equals(other._selectableBaseClass, _selectableBaseClass) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality()
                .equals(other.announceTime, announceTime) &&
            const DeepCollectionEquality().equals(other._teacher, _teacher) &&
            const DeepCollectionEquality().equals(other.timeTable, timeTable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(className),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(frameCount),
      const DeepCollectionEquality().hash(_selectableBaseClass),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(announceTime),
      const DeepCollectionEquality().hash(_teacher),
      const DeepCollectionEquality().hash(timeTable));

  @JsonKey(ignore: true)
  @override
  _$$_ClassStateCopyWith<_$_ClassState> get copyWith =>
      __$$_ClassStateCopyWithImpl<_$_ClassState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassStateToJson(
      this,
    );
  }
}

abstract class _ClassState implements ClassState {
  const factory _ClassState(
      {final String className,
      final String endTime,
      final int frameCount,
      final List<String> selectableBaseClass,
      final String startTime,
      final String announceTime,
      final List<String> teacher,
      final int timeTable}) = _$_ClassState;

  factory _ClassState.fromJson(Map<String, dynamic> json) =
      _$_ClassState.fromJson;

  @override
  String get className;
  @override
  String get endTime;
  @override
  int get frameCount;
  @override
  List<String> get selectableBaseClass;
  @override
  String get startTime;
  @override
  String get announceTime;
  @override
  List<String> get teacher;
  @override
  int get timeTable;
  @override
  @JsonKey(ignore: true)
  _$$_ClassStateCopyWith<_$_ClassState> get copyWith =>
      throw _privateConstructorUsedError;
}
