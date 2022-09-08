import 'package:flutter/material.dart';
import 'package:vantan_connect/component/button/tappable_text.dart';
import 'package:vantan_connect/component/molecule/primary_color_button.dart';
import 'package:vantan_connect/const/space_box.dart';

class GuidanceButton extends StatelessWidget {
  const GuidanceButton({
    super.key,
    required this.mainText,
    required this.mainCallBack,
    required this.mainStyle,
    required this.subText,
    required this.nextPage,
  });

  final String mainText;
  final VoidCallback mainCallBack;
  final TextStyle mainStyle;
  final String subText;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PrimaryColorButton(
        text: mainText,
        voidCallBack: mainCallBack,
        textStyle: mainStyle,
      ),
      const SpaceBox(height: 23),
      TappableText(text: subText, nextPage: nextPage),
      // Padding(
      //   padding: const EdgeInsets.only(top: 235),
      //   child: SizedBox(
      //     width: double.infinity,
      //     height: 50,
      //     child: ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //         primary: colorScheme!.primary,
      //         onPrimary: colorScheme!.onPrimary,
      //       ),
      //       onPressed: () {
      //         Navigator.of(context).pushReplacement(
      //           MaterialPageRoute<SignUpPage>(
      //             builder: (_) => const SignUpPage(),
      //           ),
      //         );
      //       },
      //       child: const Text(
      //         '始める',
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
      // Padding(
      //   padding: const EdgeInsets.only(top: 308),
      //   child: GestureDetector(
      //     child: SizedBox(
      //       width: double.infinity,
      //       child: Text(
      //         'ログイン',
      //         style: TextStyle(
      //           color: colorScheme!.onBackground,
      //           fontWeight: FontWeight.bold,
      //         ),
      //         textAlign: TextAlign.center,
      //       ),
      //     ),
      //     onTap: () {
      //       Navigator.of(context).pushReplacement(
      //           MaterialPageRoute<LoginPage>(builder: (_) => LoginPage()));
      //     },
      //   ),
      // ),
    ]);
  }
}
