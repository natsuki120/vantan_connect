import 'package:flutter_riverpod/flutter_riverpod.dart';

final notificationToClassTime = Provider.family(
  (ref, DateTime classTime) =>
      classTime.toString() == DateTime.now().toString() ? 'aaa' : null,
);
