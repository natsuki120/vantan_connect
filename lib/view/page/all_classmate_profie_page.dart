import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import '../organism/classmate_profile_detail.dart';

class AllClassmateProfilePage extends StatelessWidget {
  const AllClassmateProfilePage({super.key, required this.classmateList});
  final List classmateList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: classmateList.length,
      itemBuilder: (context, index) {
        Map<String, dynamic> classmate = classmateList[index];
        return Column(
          children: [
            ClassmateProfileDetailCard(
              classImg: classmate['userImagePath'],
              classmateName: classmate['name'],
              classmateId: classmate['id'],
              classmateInfo: classmate['profileText'],
            ),
            SpaceBox(height: 16.h),
          ],
        );
      },
    );
  }
}
