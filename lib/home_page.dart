import 'package:flutter/material.dart';
import 'component/atom/color_schemes.g.dart';
import 'component/molecule/style_by_platform.dart';
import 'component/template/attendance_confirmation_modal_template.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme!.primaryContainer,
        title: Text(
          'ホーム',
          style: titleMedium(
            FontWeight.w600,
            const Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
      ),
      body: ElevatedButton(
          onPressed: () => attendanceConfirmationModal(context), child: null),
    );
  }
}
