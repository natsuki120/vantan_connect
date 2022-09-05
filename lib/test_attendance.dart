import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/ripository/user_repository.dart';
import 'package:vantan_connect/view_model/user_view_model.dart';

class TestAttendance extends ConsumerStatefulWidget {
  const TestAttendance(this.uid, {super.key});

  final String uid;

  @override
  ConsumerState<TestAttendance> createState() => _TestAttendanceState();
}

class _TestAttendanceState extends ConsumerState<TestAttendance> {
  @override
  void initState() {
    super.initState();
    Future(() async {
      await ref.read(userViewModel.notifier).fetchUser(widget.uid);
    });
  }

  @override
  Widget build(BuildContext context) {
    final config = ref.watch(futureProvider);
    ref.watch(userViewModel);
    return Scaffold(
      body: config.when(
        data: (config) {
          return Center(
            child: Text(
              '${ref.watch(userViewModel.notifier).state.name}の出席日数は${ref.watch(userViewModel.notifier).state.attendedDay}日です',
            ),
          );
        },
        loading: () {},
        error: (Object error, StackTrace? stackTrace) {
          return Center(child: Container());
        },
      ),
    );
  }
}
