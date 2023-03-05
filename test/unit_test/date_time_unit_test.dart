import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vantan_connect/component/shared/single/dateTime/dateTime_japan/date_time_japan.dart';

class DateTimeTestApp extends ConsumerWidget {
  const DateTimeTestApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final year = ref.watch(yearProvider).value;
    final month = ref.watch(monthProvider).value;
    final date = ref.watch(dateProvider).value;
    final day = ref.watch(dayProvider).value;
    // final minute = ref.watch(minuteProvider).value;
    final second = ref.watch(secondProvider).value;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('$year'),
          Text('$month'),
          Text('$date'),
          Text('$day'),
          //Text('$minute'),
          Text('$second'),
        ],
      ),
    );
  }
}

void main() {
  testWidgets('update the UI when incrementing the state', (tester) async {
    await tester.pumpWidget(ProviderScope(child: DateTimeTestApp()));
    expect(find.text('20日'), findsOneWidget);
    expect(find.text('21日'), findsNothing);

    await Duration(days: 1);
    await tester.pump();

    expect(find.text('21日'), findsOneWidget);
    expect(find.text('20日'), findsNothing);
  });
}
