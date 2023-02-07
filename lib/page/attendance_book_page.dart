import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/local/attendance_book_content/attendance_book_content.dart';

class AttendanceBookPage extends ConsumerWidget {
  const AttendanceBookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: AttendanceBookContent(),
      ),
    );
  }
}
