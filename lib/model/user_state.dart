import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_state.freezed.dart';
part 'user_state.g.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default('') String name,
    @Default('') String profileText,
    @Default('') String attendance,
<<<<<<< HEAD:lib/model/user_state.dart
=======
    @Default(0) int attendedDay,
    @Default('') String accountNumber,
    @Default('') String userImagePath,
>>>>>>> a341bdf (✨ create profile page and function edit profile):lib/model/user_state/user_state.dart
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}
