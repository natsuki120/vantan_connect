import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../shared/single/color/color.dart';

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
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [CircleAvatar()],
      ),
      title: Text('$studentName'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('$studentId'),
          SizedBox(height: 8.sp),
          Row(
            children: [
              Container(
                padding:
                    EdgeInsets.symmetric(vertical: 4.sp, horizontal: 12.sp),
                child: Text('1年生'),
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
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: () {
        //TODO:
        // NavigatorPush(
        //   context,
        //   page: ,
        //   //生徒詳細ページへ
        // );
      },
    );
  }
}
