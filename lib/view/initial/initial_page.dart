import 'package:flutter/material.dart';
import '../../const/color_schemes.g.dart';
import 'component/app_title.dart';
import 'component/guid_auth.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: colorScheme!.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppTitle(size: size),
          GuidAuth(size: size),
        ],
      ),
    );
  }
}
