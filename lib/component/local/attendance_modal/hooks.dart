import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final today = StateProvider((ref) {
  return DateFormat.EEEE('ja').format(DateTime.now());
});
