import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/model/hash_tag_state/hash_tag_state.dart';

class HashTagStateViewModel extends StateNotifier<HashTagState> {
  HashTagStateViewModel() : super(const HashTagState());

  void onChangeForm(String text) {
    state = state.copyWith(onChangeForm: text);
  }
}

final hashtagStateViewModel = StateNotifierProvider(
  (ref) => HashTagStateViewModel(),
);
