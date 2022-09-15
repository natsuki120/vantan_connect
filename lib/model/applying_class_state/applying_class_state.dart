import 'package:freezed_annotation/freezed_annotation.dart';
part 'applying_class_state.freezed.dart';
part 'applying_class_state.g.dart';

@freezed
class ApplyingClassState with _$ApplyingClassState {
  const factory ApplyingClassState({
    @Default('') String id,
    @Default(<String>[]) List<String> className,
    @Default('') String name,
    @Default('') String uid,
    @Default('') String userImagePath,
  }) = _ApplyingClassState;

  factory ApplyingClassState.fromJson(Map<String, dynamic> json) =>
      _$ApplyingClassStateFromJson(json);
}
