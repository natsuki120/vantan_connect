import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/api/user_fields.dart';
part 'user_state.freezed.dart';
part 'user_state.g.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    @Default('') String name,
    @Default('') String attendance,
  }) = _UserState;

  factory UserState.fromJson(Map<String, dynamic> json) =>
      _$UserStateFromJson(json);
}
