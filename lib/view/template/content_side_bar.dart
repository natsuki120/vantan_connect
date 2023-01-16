import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/view/organism/school_logo_with_school_name.dart';
import 'package:vantan_connect/view/token/space_box.dart';

class ContentSideBar extends StatelessWidget {
  const ContentSideBar({
    Key? key,
    required this.schoolName,
    required this.whereSchool,
    required this.content,
  }) : super(key: key);

  final String schoolName;
  final String whereSchool;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SpaceBox(height: 12.sp),
          SchoolLogoWithSchoolName(
            schoolName: schoolName,
            whereSchool: whereSchool,
          ),
          SpaceBox(height: 26.sp),
          content
        ],
      ),
    );
  }
}
