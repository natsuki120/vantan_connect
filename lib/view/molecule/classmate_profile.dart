import 'package:flutter/material.dart';

import '../atom/classmate_profile_detail.dart';

class ClassmateProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClassmateProfileDetailCard(),
      ],
    );
  }
}
