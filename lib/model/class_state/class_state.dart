import 'package:freezed_annotation/freezed_annotation.dart';
part 'class_state.freezed.dart';
part 'class_state.g.dart';

@freezed
class ClassState with _$ClassState {
  const factory ClassState({
    @Default('') String className,
    @Default('') String endTime,
    @Default(0) int frameCount,
    @Default([]) List selectedBaseClass,
    @Default('') String startTime,
    @Default([]) List teacher,
    @Default(0) int timeTable,
    @Default('') String weekDay,
  }) = _ClassState;

  factory ClassState.fromJson(Map<String, dynamic> json) =>
      _$ClassStateFromJson(json);
}
