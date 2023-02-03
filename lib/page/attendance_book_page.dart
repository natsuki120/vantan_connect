import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../component/shered/riverpod.dart';
import '../domain/class_document/class_document.dart';

class AttendanceBookPage extends ConsumerWidget {
  const AttendanceBookPage({Key? key, required this.classDocument})
      : super(key: key);

  final ClassDocument classDocument;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ref.watch(testProvider(classDocument)).when(
              data: (data) => Text(data.toString()),
              error: (error, _) => Text(error.toString()),
              loading: () => const CircularProgressIndicator(),
            ),
      ),
    );
  }
}
