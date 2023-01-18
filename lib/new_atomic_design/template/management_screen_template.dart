import 'package:flutter/material.dart';
import 'package:vantan_connect/new_atomic_design/organism/sidebar.dart';

class ManagementScreenTemplate extends StatelessWidget {
  const ManagementScreenTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SideBar(),
    );
  }
}
