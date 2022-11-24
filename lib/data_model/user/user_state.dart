import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_state.freezed.dart';
part 'user_state.g.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default('') String id,
    @Default('') String name,
    @Default('') String profileText,
    @Default('') String attendance,
    @Default(0) int attendedDay,
    @Default('') String accountNumber,
    @Default('') String userImagePath,
    @Default('') String rootCollection,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}
