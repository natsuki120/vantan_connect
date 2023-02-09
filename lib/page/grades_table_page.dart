import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../component/local/grades_table_app_bar/app_bar.dart';
import '../component/local/grades_table_body/grades_table_body.dart';

class GradesTablePage extends StatelessWidget {
  const GradesTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(116.sp),
          child: GradesTableAppBar(),
        ),
        body: TabBarView(
          children: [
            GradesTableBody(),
            GradesTableBody(),
            GradesTableBody(),
          ],
        ),
      ),
    );
  }
}
