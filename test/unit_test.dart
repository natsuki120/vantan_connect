import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vantan_connect/buisiness_logic/provider/notification_to_class_time.dart';

void main() {
  test('providerTest', () {
    final container = ProviderContainer();
    final testProvider = container.read(
      notificationToClassTime(DateTime.now()),
    );
    expect(testProvider, 'aaa');
  });
}
