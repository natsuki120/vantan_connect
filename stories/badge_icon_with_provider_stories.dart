import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'badge_icon_with_provider.dart';

class CounterBody extends ConsumerWidget {
  const CounterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(countProvider.notifier);
    return Column(
      children: <Widget>[
        const BadgeIconWithProvider(),
        const SizedBox(height: 5),
        ElevatedButton(
          child: const Text('カウントアップ'),
          onPressed: () => notifier.update((state) => state + 1),
        ),
        const SizedBox(height: 5),
        ElevatedButton(
          child: const Text('カウントダウン'),
          onPressed: () => notifier.update((state) => state - 1),
        ),
      ],
    );
  }
}

Widget counter() => const ProviderScope(child: CounterBody());
