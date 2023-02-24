import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:vantan_connect/component/local/grades_table/grades_table_body/elements/todays_lesson/todays_lesson_body/elements/todays_lesson_tab_bar_view/todays_lesson_tab_bar_view.dart';
import '../../../../page/grades_table_page.dart';
import '../../../shared/single/color/color.dart';
import '../grades_table_body/elements/todays_lesson/todays_lesson_body/elements/todays_lesson_header/todays_lesson_header.dart';

class GradesTableModalShowTodaysLessons extends HookWidget {
  GradesTableModalShowTodaysLessons({
    super.key,
    this.todaysLessonTabController,
  });
  final TabController? todaysLessonTabController;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.down,
      key: Key('key'),
      background: GradesTablePage(),
      child: Scaffold(
        backgroundColor: white,
        body: SafeArea(
          bottom: false,
          child: Container(
            color: white,
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TodaysLessonHeader(
                    isModal: true,
                  ),
                  // TodaysLessonTab(
                  //   todaysLessonTabController: todaysLessonTabController,
                  // ),
                  Expanded(
                    child: Hero(
                      tag: 'todaysLessonHeroTag',
                      transitionOnUserGestures: false,
                      child: Material(
                        child: TodaysLessonTabBarView(
                          todaysLessonTabController: todaysLessonTabController,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
