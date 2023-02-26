import 'package:flutter_riverpod/flutter_riverpod.dart';

final isEditableProvider =
    NotifierProvider<IsEditable, bool>(() => IsEditable());

class IsEditable extends Notifier<bool> {
  @override
  bool build() => true;

  void startEdit() => state = true;
  void finishEdit() => state = false;
}
