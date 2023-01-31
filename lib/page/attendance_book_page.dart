import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/domain/class_document/class_document.dart';
import '../component/shered/riverpod.dart';

class AttendanceBookPage extends ConsumerWidget {
  const AttendanceBookPage({Key? key, required this.classDocument})
      : super(key: key);

  final ClassDocument classDocument;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: ref.watch(queryService(classDocument)).when(
              data: (data) => Text(data.toString()),
              error: (error, _) => Text(error.toString()),
              loading: () => const CircularProgressIndicator(),
            ),
      ),
    );
  }
}
