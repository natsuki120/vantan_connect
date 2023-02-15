import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/single/color/color.dart';
import '../../../../shared/single/text_style/text_style.dart';

class LessonStudentPart extends ConsumerWidget {
  LessonStudentPart({
    super.key,
    required this.studentId,
    required this.studentName,
  });
  final String studentId;
  final String studentName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 10.sp),
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [CircleAvatar()],
          ),
          title: Text(
            '$studentName',
            style: callOutBold(black),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$studentId', style: caption1Regular(midEmphasis)),
              SizedBox(height: 8.sp),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 4.sp, horizontal: 12.sp),
                    child: Text('1年生', style: caption1Regular(midEmphasis)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.sp),
                        border: Border.all(
                          color: borderLowEmphasis,
                        )),
                  )
                ],
              )
            ],
          ),
          isThreeLine: true,
          trailing: Icon(Icons.navigate_next),
          onTap: () {
            //TODO:
            // NavigatorPush(
            //   context,
            //   page: ,
            //   //生徒詳細ページへ
            // );
          },
        ),
      ],
    );
  }
}
