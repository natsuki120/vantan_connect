import 'package:flutter/material.dart';
import '../../../const/color_schemes.g.dart';
import '../../login/login_page.dart';
import '../../signup/sign_up_page.dart';

class GuidAuth extends StatelessWidget {
  const GuidAuth({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: size.height * 0.4,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: colorScheme!.background,
              // TODO デザインが少し違う。端末サイズを超過するcontainerを許容するロジックを考える
              borderRadius: const BorderRadius.vertical(
                top: Radius.elliptical(900, 100),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 235),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: colorScheme!.primary,
                          onPrimary: colorScheme!.onPrimary,
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute<SignUpPage>(
                              builder: (_) => const SignUpPage(),
                            ),
                          );
                        },
                        child: const Text(
                          '始める',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 308),
                    child: GestureDetector(
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'ログイン',
                          style: TextStyle(
                            color: colorScheme!.onBackground,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute<LoginPage>(
                                builder: (_) => LoginPage()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 200, left: 80),
          child: Image.asset('images/women.png'),
        ),
      ],
    );
  }
}
