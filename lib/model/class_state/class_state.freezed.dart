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
  List<dynamic> get selectedBaseClass => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  List<dynamic> get teacher => throw _privateConstructorUsedError;
  int get timeTable => throw _privateConstructorUsedError;
  String get weekDay => throw _privateConstructorUsedError;

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
      List<dynamic> selectedBaseClass,
      String startTime,
      List<dynamic> teacher,
      int timeTable,
      String weekDay});
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
    Object? selectedBaseClass = freezed,
    Object? startTime = freezed,
    Object? teacher = freezed,
    Object? timeTable = freezed,
    Object? weekDay = freezed,
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
      selectedBaseClass: selectedBaseClass == freezed
          ? _value.selectedBaseClass
          : selectedBaseClass // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: teacher == freezed
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      timeTable: timeTable == freezed
          ? _value.timeTable
          : timeTable // ignore: cast_nullable_to_non_nullable
              as int,
      weekDay: weekDay == freezed
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as String,
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
      List<dynamic> selectedBaseClass,
      String startTime,
      List<dynamic> teacher,
      int timeTable,
      String weekDay});
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
    Object? selectedBaseClass = freezed,
    Object? startTime = freezed,
    Object? teacher = freezed,
    Object? timeTable = freezed,
    Object? weekDay = freezed,
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
      selectedBaseClass: selectedBaseClass == freezed
          ? _value._selectedBaseClass
          : selectedBaseClass // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      teacher: teacher == freezed
          ? _value._teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      timeTable: timeTable == freezed
          ? _value.timeTable
          : timeTable // ignore: cast_nullable_to_non_nullable
              as int,
      weekDay: weekDay == freezed
          ? _value.weekDay
          : weekDay // ignore: cast_nullable_to_non_nullable
              as String,
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
      final List<dynamic> selectedBaseClass = const [],
      this.startTime = '',
      final List<dynamic> teacher = const [],
      this.timeTable = 0,
      this.weekDay = ''})
      : _selectedBaseClass = selectedBaseClass,
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
  final List<dynamic> _selectedBaseClass;
  @override
  @JsonKey()
  List<dynamic> get selectedBaseClass {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedBaseClass);
  }

  @override
  @JsonKey()
  final String startTime;
  final List<dynamic> _teacher;
  @override
  @JsonKey()
  List<dynamic> get teacher {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teacher);
  }

  @override
  @JsonKey()
  final int timeTable;
  @override
  @JsonKey()
  final String weekDay;

  @override
  String toString() {
    return 'ClassState(className: $className, endTime: $endTime, frameCount: $frameCount, selectedBaseClass: $selectedBaseClass, startTime: $startTime, teacher: $teacher, timeTable: $timeTable, weekDay: $weekDay)';
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
                .equals(other._selectedBaseClass, _selectedBaseClass) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other._teacher, _teacher) &&
            const DeepCollectionEquality().equals(other.timeTable, timeTable) &&
            const DeepCollectionEquality().equals(other.weekDay, weekDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(className),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(frameCount),
      const DeepCollectionEquality().hash(_selectedBaseClass),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(_teacher),
      const DeepCollectionEquality().hash(timeTable),
      const DeepCollectionEquality().hash(weekDay));

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
      final List<dynamic> selectedBaseClass,
      final String startTime,
      final List<dynamic> teacher,
      final int timeTable,
      final String weekDay}) = _$_ClassState;

  factory _ClassState.fromJson(Map<String, dynamic> json) =
      _$_ClassState.fromJson;

  @override
  String get className;
  @override
  String get endTime;
  @override
  int get frameCount;
  @override
  List<dynamic> get selectedBaseClass;
  @override
  String get startTime;
  @override
  List<dynamic> get teacher;
  @override
  int get timeTable;
  @override
  String get weekDay;
  @override
  @JsonKey(ignore: true)
  _$$_ClassStateCopyWith<_$_ClassState> get copyWith =>
      throw _privateConstructorUsedError;
}
