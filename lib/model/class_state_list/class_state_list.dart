import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/model/class_state/class_state.dart';
part 'class_state_list.freezed.dart';
part 'class_state_list.g.dart';

@freezed
class ClassStateList with _$ClassStateList {
  const factory ClassStateList({
    @Default(<ClassState>[]) List<ClassState> classStateList,
  }) = _ClassStateList;

  factory ClassStateList.fromJson(Map<String, dynamic> json) =>
      _$ClassStateListFromJson(json);
}
