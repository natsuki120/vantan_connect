import 'package:flutter/material.dart';
import 'package:vantan_connect/const/space_box.dart';
import 'package:vantan_connect/view/verify_phone_number/component/input_sms_code_field.dart';
<<<<<<< HEAD
import '../../component/molecule/common/indicator.dart';
=======
import '../../component/organism/indicator.dart';
>>>>>>> a341bdf (✨ create profile page and function edit profile)
import 'component/guidance_message.dart';
import 'component/re_send_sms_code.dart';
import 'component/return_previous_page_button.dart';

class VerifyPhoneNumberPage extends StatelessWidget {
  const VerifyPhoneNumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FourIndicator(
              firstPercent: 1,
              secondPercent: 1,
              thirdPercent: 0,
              forthPercent: 0,
            ),
            GuidanceMessage(),
            InputSmsCodeField(),
            SpaceBox(height: 47),
            ResendSmsCode(),
            SpaceBox(height: 278),
            Center(
              child: GestureDetector(
                child: const Text('< 戻る'),
                onTap: () => Navigator.of(context).pop(),
              ),
            ),
            SpaceBox(height: 73),
          ],
        ),
      ),
    );
  }
}
