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
