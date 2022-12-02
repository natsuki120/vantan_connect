import 'package:flutter/material.dart';
import '../token/color_schemes.g.dart';
import '../token/style_by_platform.dart';

class Test extends StatelessWidget {
  const Test({Key? key, required this.body, required this.bottom})
      : super(key: key);

  final Widget body;
  final Widget bottom;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).canvasColor,
          elevation: 1,
          centerTitle: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(271.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    bottom,
                    TabBar(
                      labelColor: colorScheme.onBackground,
                      labelStyle: headLineBold(colorScheme.primary),
                      unselectedLabelColor: colorScheme.onBackground,
                      unselectedLabelStyle: labelLarge(
                        FontWeight.w500,
                        colorScheme.onBackground.withOpacity(0.5),
                      ),
                      indicatorColor: colorScheme.primary,
                      tabs: [Tab(text: '詳細'), Tab(text: 'スケジュール')],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: body,
      ),
    );
  }
}
