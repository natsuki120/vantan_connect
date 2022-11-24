import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'badge_icon.dart';

final countProvider = StateProvider.autoDispose<int>((ref) => 0);

class BadgeIconWithProvider extends ConsumerWidget {
  const BadgeIconWithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(countProvider);
    return Container(
      padding: const EdgeInsets.all(8),
      child: BadgeIcon(
        icon: const Icon(Icons.mail),
        badgeCount: count,
      ),
    );
  }
}
