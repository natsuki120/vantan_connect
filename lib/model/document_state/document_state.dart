import 'package:freezed_annotation/freezed_annotation.dart';
part 'document_state.freezed.dart';
part 'document_state.g.dart';

@freezed
class DocumentState with _$DocumentState {
  const factory DocumentState({
    @Default('') String text,
  }) = _DocumentState;

  factory DocumentState.fromJson(Map<String, dynamic> json) =>
      _$DocumentStateFromJson(json);
}
