import 'package:freezed_annotation/freezed_annotation.dart';
part 'class_state.freezed.dart';
part 'class_state.g.dart';

@freezed
class ClassState with _$ClassState {
  const factory ClassState({
    @Default('') String className,
    @Default(0) int attendDay,
    @Default(0) int allTime,
  }) = _ClassState;

  factory ClassState.fromJson(Map<String, dynamic> json) =>
      _$ClassStateFromJson(json);
}
