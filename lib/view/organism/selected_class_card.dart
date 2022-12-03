// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:vantan_connect/domain/class/class.dart';
// import 'package:vantan_connect/view/atom/main_text.dart';
// import 'package:vantan_connect/view/molecule/Icon_and_text.dart';
// import 'package:vantan_connect/view/atom/border_box.dart';
// import 'package:vantan_connect/view/atom/on_primary_color_button.dart';
// import 'package:vantan_connect/view/page/select_class_base_class_page.dart';
// import '../token/color_schemes.g.dart';
// import '../token/space_box.dart';
// import '../token/style_by_platform.dart';
// import '../molecule/guidance_message.dart';
//
// class SelectedClassCard extends ConsumerWidget {
//   const SelectedClassCard({Key? key, required this.classInfo})
//       : super(key: key);
//
//   final Class classInfo;
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return BorderBox(
//       radius: 12,
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               IconAndText(
//                 iconData: Icons.calendar_today,
//                 text: '${classInfo.frameCount}コマ',
//                 textStyle:
//                     bodyRegular(colorScheme.onBackground.withOpacity(0.5)),
//                 spaceSize: 11.w,
//                 color: colorScheme.onBackground.withOpacity(0.5),
//                 mainAxisAlignment: MainAxisAlignment.start,
//               ),
//               SpaceBox(width: 26.w),
//               classInfo.online == true
//                   ? IconAndText(
//                       iconData: Icons.videocam,
//                       text: 'オンライン可',
//                       textStyle: bodyRegular(
//                           colorScheme.onBackground.withOpacity(0.5)),
//                       spaceSize: 11.w,
//                       color: colorScheme.onBackground.withOpacity(0.5),
//                       mainAxisAlignment: MainAxisAlignment.start,
//                     )
//                   : IconAndText(
//                       iconData: Icons.videocam_off_outlined,
//                       text: 'オフライン不可',
//                       textStyle: bodyRegular(
//                           colorScheme.onBackground.withOpacity(0.5)),
//                       spaceSize: 11.w,
//                       color: colorScheme.onBackground.withOpacity(0.5),
//                       mainAxisAlignment: MainAxisAlignment.start,
//                     ),
//             ],
//           ),
//           SpaceBox(height: 22.h),
//           GuidanceMessage(
//             mainText: classInfo.name,
//             subText: classInfo.overView,
//             mainTextStyle: title2Bold(colorScheme.onBackground),
//             subTextStyle:
//                 bodyRegular(colorScheme.onBackground.withOpacity(0.7)),
//             crossAxisAlignment: CrossAxisAlignment.start,
//             spaceSize: 7.h,
//           ),
//           SpaceBox(height: 24.h),
//           Align(
//             alignment: Alignment.bottomRight,
//             child: OnPrimaryColorButton(
//               width: 120.w,
//               height: 40.h,
//               callback: () => Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (_) => SelectClassBaseClassPage(),
//                 ),
//               ),
//               child: MainText(
//                 text: '変更する',
//                 textStyle: bodyBold(colorScheme.primary),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
