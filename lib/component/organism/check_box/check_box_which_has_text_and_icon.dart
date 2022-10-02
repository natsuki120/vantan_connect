// import 'package:flutter/material.dart';
// import 'package:vantan_connect/component/atom/color_schemes.g.dart';
// import 'package:vantan_connect/component/molecule/selected_check_box_element.dart';
// import 'package:vantan_connect/component/molecule/un_selected_check_box_element.dart';
// import '../../molecule/style_by_platform.dart';
//
// class CheckBoxWhichHasTextAndIcon extends StatefulWidget {
//   CheckBoxWhichHasTextAndIcon({
//     super.key,
//     required this.text,
//     required this.selectedColor,
//     required this.unSelectedColor,
//     required this.width,
//     required this.height,
//     this.selectedIcon,
//     this.unSelectedIcon,
//     required this.hasSelectedIcon,
//     required this.hasUnSelectedIcon,
//   });
//   final String text;
//   final Color selectedColor;
//   final Color unSelectedColor;
//   final double width;
//   final double height;
//   IconData? selectedIcon;
//   IconData? unSelectedIcon;
//   final bool hasSelectedIcon;
//   final bool hasUnSelectedIcon;
//
//   @override
//   State<CheckBoxWhichHasTextAndIcon> createState() =>
//       _CheckBoxWhichHasTextAndIconState();
// }
//
// class _CheckBoxWhichHasTextAndIconState
//     extends State<CheckBoxWhichHasTextAndIcon> {
//   bool isSelected = false;
//   @override
//   Widget build(BuildContext context) {
//     return isSelected
//         ? GestureDetector(
//             child: SelectedCheckBoxElementWhichUseCommonContainer(
//               width: widget.width,
//               height: widget.height,
//               text: widget.text,
//               color: widget.selectedColor,
//               iconData: widget.selectedIcon,
//               textStyle: bodyLarge(FontWeight.w300, colorScheme.onSurface),
//             ),
//             onTap: () => setState(() => isSelected = !isSelected),
//           )
//         : GestureDetector(
//             child: UnSelectedCheckBoxElement(
//               width: widget.width,
//               height: widget.height,
//               text: widget.text,
//               iconData: widget.unSelectedIcon,
//               color: widget.unSelectedColor,
//               textStyle: bodyLarge(FontWeight.w300, colorScheme.onSurface),
//             ),
//             onTap: () => setState(() => isSelected = !isSelected),
//           );
//   }
// }
