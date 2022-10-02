// import 'package:flutter/material.dart';
// import '../atom/color_schemes.g.dart';
// import 'selected_check_box_element.dart';
// import '../molecule/style_by_platform.dart';
// import 'check_box_element/un_selected_check_box_element.dart';
//
// class CheckBoxWithTextWhichCanBePutIcon extends StatefulWidget {
//   CheckBoxWithTextWhichCanBePutIcon({
//     Key? key,
//     required this.text,
//     required this.selectedColor,
//     required this.unSelectedColor,
//     required this.height,
//     required this.hasSelectedIcon,
//     required this.hasUnSelectedIcon,
//     required this.selectedWidth,
//     required this.unSelectedWidth,
//     this.selectedIcon,
//     this.unSelectedIcon,
//   }) : super(key: key);
//
//   final String text;
//   final Color selectedColor;
//   final Color unSelectedColor;
//   final double selectedWidth;
//   final double unSelectedWidth;
//   final double height;
//   IconData? selectedIcon;
//   IconData? unSelectedIcon;
//   final bool hasSelectedIcon;
//   final bool hasUnSelectedIcon;
//
//   @override
//   State<CheckBoxWithTextWhichCanBePutIcon> createState() =>
//       _CheckBoxWithTextWhichCanBePutIconState();
// }
//
// class _CheckBoxWithTextWhichCanBePutIconState
//     extends State<CheckBoxWithTextWhichCanBePutIcon> {
//   bool isSelected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return isSelected
//         ? GestureDetector(
//             child: SelectedCheckBoxElement(
//               width: widget.selectedWidth,
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
//               width: widget.unSelectedWidth,
//               height: widget.height,
//               text: widget.text,
//               color: widget.unSelectedColor,
//               iconData: widget.unSelectedIcon,
//               textStyle: bodyLarge(FontWeight.w300, colorScheme.onSurface),
//             ),
//             onTap: () => setState(() => isSelected = !isSelected),
//           );
//   }
// }
