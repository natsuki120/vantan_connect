import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../component/local/grades_table/grades_table_app_bar/grades_table_app_bar.dart';
import '../component/local/grades_table/grades_table_body/grades_table_body.dart';

class GradesTablePage extends StatelessWidget {
  const GradesTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
          child: GradesTableAppBar(),
        ),
      ),
      body: GradesTableBody(),
    );
  }
}
