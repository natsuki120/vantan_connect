import 'package:freezed_annotation/freezed_annotation.dart';
part 'class_state.freezed.dart';
part 'class_state.g.dart';

@freezed
class ClassState with _$ClassState {
  const factory ClassState({
    @Default('') String count,
    @Default('') String className,
    @Default('') String teacher,
    @Default('') String weekDay,
    @Default(<String>[]) List<String> start,
  }) = _ClassState;

  factory ClassState.fromJson(Map<String, dynamic> json) =>
      _$ClassStateFromJson(json);
}
