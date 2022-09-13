import 'package:freezed_annotation/freezed_annotation.dart';
part 'hash_tag_state.freezed.dart';

@freezed
class HashTagState with _$HashTagState {
  const factory HashTagState({
    @Default('') String onChangeForm,
  }) = _HashTagState;
}
