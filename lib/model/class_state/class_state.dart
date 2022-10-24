import 'package:freezed_annotation/freezed_annotation.dart';
part 'class_state.freezed.dart';
part 'class_state.g.dart';

@freezed
class ClassState with _$ClassState {
  const factory ClassState({
    @Default('') String className,
    @Default('') String endTime,
    @Default(0) int frameCount,
    @Default(<String>[]) List<String> selectableBaseClass,
    @Default('') String startTime,
    @Default('') String announceTime,
    @Default(<String>[]) List<String> teacher,
    @Default(0) int timeTable,
  }) = _ClassState;

  factory ClassState.fromJson(Map<String, dynamic> json) =>
      _$ClassStateFromJson(json);
}
