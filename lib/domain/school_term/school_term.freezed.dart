// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_term.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SchoolTerm _$SchoolTermFromJson(Map<String, dynamic> json) {
  return _SchoolTerm.fromJson(json);
}

/// @nodoc
mixin _$SchoolTerm {
  String get departmentName => throw _privateConstructorUsedError;
  String get yearPlan => throw _privateConstructorUsedError;
  String get term => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SchoolTermCopyWith<SchoolTerm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolTermCopyWith<$Res> {
  factory $SchoolTermCopyWith(
          SchoolTerm value, $Res Function(SchoolTerm) then) =
      _$SchoolTermCopyWithImpl<$Res, SchoolTerm>;
  @useResult
  $Res call({String departmentName, String yearPlan, String term});
}

/// @nodoc
class _$SchoolTermCopyWithImpl<$Res, $Val extends SchoolTerm>
    implements $SchoolTermCopyWith<$Res> {
  _$SchoolTermCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentName = null,
    Object? yearPlan = null,
    Object? term = null,
  }) {
    return _then(_value.copyWith(
      departmentName: null == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      yearPlan: null == yearPlan
          ? _value.yearPlan
          : yearPlan // ignore: cast_nullable_to_non_nullable
              as String,
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SchoolTermCopyWith<$Res>
    implements $SchoolTermCopyWith<$Res> {
  factory _$$_SchoolTermCopyWith(
          _$_SchoolTerm value, $Res Function(_$_SchoolTerm) then) =
      __$$_SchoolTermCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String departmentName, String yearPlan, String term});
}

/// @nodoc
class __$$_SchoolTermCopyWithImpl<$Res>
    extends _$SchoolTermCopyWithImpl<$Res, _$_SchoolTerm>
    implements _$$_SchoolTermCopyWith<$Res> {
  __$$_SchoolTermCopyWithImpl(
      _$_SchoolTerm _value, $Res Function(_$_SchoolTerm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? departmentName = null,
    Object? yearPlan = null,
    Object? term = null,
  }) {
    return _then(_$_SchoolTerm(
      departmentName: null == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      yearPlan: null == yearPlan
          ? _value.yearPlan
          : yearPlan // ignore: cast_nullable_to_non_nullable
              as String,
      term: null == term
          ? _value.term
          : term // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SchoolTerm implements _SchoolTerm {
  const _$_SchoolTerm(
      {required this.departmentName,
      required this.yearPlan,
      required this.term});

  factory _$_SchoolTerm.fromJson(Map<String, dynamic> json) =>
      _$$_SchoolTermFromJson(json);

  @override
  final String departmentName;
  @override
  final String yearPlan;
  @override
  final String term;

  @override
  String toString() {
    return 'SchoolTerm(departmentName: $departmentName, yearPlan: $yearPlan, term: $term)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SchoolTerm &&
            (identical(other.departmentName, departmentName) ||
                other.departmentName == departmentName) &&
            (identical(other.yearPlan, yearPlan) ||
                other.yearPlan == yearPlan) &&
            (identical(other.term, term) || other.term == term));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, departmentName, yearPlan, term);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SchoolTermCopyWith<_$_SchoolTerm> get copyWith =>
      __$$_SchoolTermCopyWithImpl<_$_SchoolTerm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SchoolTermToJson(
      this,
    );
  }
}

abstract class _SchoolTerm implements SchoolTerm {
  const factory _SchoolTerm(
      {required final String departmentName,
      required final String yearPlan,
      required final String term}) = _$_SchoolTerm;

  factory _SchoolTerm.fromJson(Map<String, dynamic> json) =
      _$_SchoolTerm.fromJson;

  @override
  String get departmentName;
  @override
  String get yearPlan;
  @override
  String get term;
  @override
  @JsonKey(ignore: true)
  _$$_SchoolTermCopyWith<_$_SchoolTerm> get copyWith =>
      throw _privateConstructorUsedError;
}

DepartmentName _$DepartmentNameFromJson(Map<String, dynamic> json) {
  return _DepartmentName.fromJson(json);
}

/// @nodoc
mixin _$DepartmentName {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentNameCopyWith<DepartmentName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentNameCopyWith<$Res> {
  factory $DepartmentNameCopyWith(
          DepartmentName value, $Res Function(DepartmentName) then) =
      _$DepartmentNameCopyWithImpl<$Res, DepartmentName>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$DepartmentNameCopyWithImpl<$Res, $Val extends DepartmentName>
    implements $DepartmentNameCopyWith<$Res> {
  _$DepartmentNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DepartmentNameCopyWith<$Res>
    implements $DepartmentNameCopyWith<$Res> {
  factory _$$_DepartmentNameCopyWith(
          _$_DepartmentName value, $Res Function(_$_DepartmentName) then) =
      __$$_DepartmentNameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_DepartmentNameCopyWithImpl<$Res>
    extends _$DepartmentNameCopyWithImpl<$Res, _$_DepartmentName>
    implements _$$_DepartmentNameCopyWith<$Res> {
  __$$_DepartmentNameCopyWithImpl(
      _$_DepartmentName _value, $Res Function(_$_DepartmentName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_DepartmentName(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepartmentName implements _DepartmentName {
  const _$_DepartmentName({required this.value});

  factory _$_DepartmentName.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentNameFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'DepartmentName(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DepartmentName &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentNameCopyWith<_$_DepartmentName> get copyWith =>
      __$$_DepartmentNameCopyWithImpl<_$_DepartmentName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentNameToJson(
      this,
    );
  }
}

abstract class _DepartmentName implements DepartmentName {
  const factory _DepartmentName({required final String value}) =
      _$_DepartmentName;

  factory _DepartmentName.fromJson(Map<String, dynamic> json) =
      _$_DepartmentName.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentNameCopyWith<_$_DepartmentName> get copyWith =>
      throw _privateConstructorUsedError;
}

Major _$MajorFromJson(Map<String, dynamic> json) {
  return _Major.fromJson(json);
}

/// @nodoc
mixin _$Major {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MajorCopyWith<Major> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MajorCopyWith<$Res> {
  factory $MajorCopyWith(Major value, $Res Function(Major) then) =
      _$MajorCopyWithImpl<$Res, Major>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$MajorCopyWithImpl<$Res, $Val extends Major>
    implements $MajorCopyWith<$Res> {
  _$MajorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MajorCopyWith<$Res> implements $MajorCopyWith<$Res> {
  factory _$$_MajorCopyWith(_$_Major value, $Res Function(_$_Major) then) =
      __$$_MajorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_MajorCopyWithImpl<$Res> extends _$MajorCopyWithImpl<$Res, _$_Major>
    implements _$$_MajorCopyWith<$Res> {
  __$$_MajorCopyWithImpl(_$_Major _value, $Res Function(_$_Major) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_Major(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Major implements _Major {
  const _$_Major({required this.value});

  factory _$_Major.fromJson(Map<String, dynamic> json) =>
      _$$_MajorFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'Major(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Major &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MajorCopyWith<_$_Major> get copyWith =>
      __$$_MajorCopyWithImpl<_$_Major>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MajorToJson(
      this,
    );
  }
}

abstract class _Major implements Major {
  const factory _Major({required final String value}) = _$_Major;

  factory _Major.fromJson(Map<String, dynamic> json) = _$_Major.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_MajorCopyWith<_$_Major> get copyWith =>
      throw _privateConstructorUsedError;
}
