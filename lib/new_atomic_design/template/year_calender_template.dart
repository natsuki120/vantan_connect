import 'package:flutter/material.dart';
import 'package:vantan_connect/new_atomic_design/organism/list_year_sidebar.dart';

class YearCalenderTemplate extends StatelessWidget {
  const YearCalenderTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListYearSidebar(),
    );
  }
}
