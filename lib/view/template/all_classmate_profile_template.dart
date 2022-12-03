import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import '../organism/classmate_profile_detail.dart';

class AllClassmateProfileTemplate extends StatelessWidget {
  const AllClassmateProfileTemplate({
    super.key,
    required this.classmateName,
    required this.classmateId,
    required this.classmateInfo,
  });
  final String classmateName;
  final classmateId;
  final classmateInfo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClassmateProfileDetailCard(
          classmateName: classmateName,
          classmateId: classmateId,
          classmateInfo: classmateInfo,
          classImg: '',
        ),
        SpaceBox(height: 16.h),
        ClassmateProfileDetailCard(
          classmateName: classmateName,
          classmateId: classmateId,
          classmateInfo: classmateInfo,
          classImg: '',
        ),
        SpaceBox(height: 16.h),
        ClassmateProfileDetailCard(
          classmateName: classmateName,
          classmateId: classmateId,
          classmateInfo: classmateInfo,
          classImg: '',
        ),
        SpaceBox(height: 16.h),
        ClassmateProfileDetailCard(
          classmateName: classmateName,
          classmateId: classmateId,
          classmateInfo: classmateInfo,
          classImg: '',
        ),
      ],
    );
  }
}
