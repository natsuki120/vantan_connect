import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_state_list.freezed.dart';
part 'user_state_list.g.dart';

@freezed
class UserStateList with _$UserStateList {
  const factory UserStateList({
    @Default([]) List userStateList,
  }) = _UserStateList;

  factory UserStateList.fromJson(Map<String, dynamic> json) =>
      _$UserStateListFromJson(json);
}
