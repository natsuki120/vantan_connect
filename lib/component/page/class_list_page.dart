import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/component/atom/color_schemes.g.dart';
import 'package:vantan_connect/component/atom/main_text.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/molecule/row_text_with_background_color.dart';
import 'package:vantan_connect/component/molecule/style_by_platform.dart';
import 'package:vantan_connect/component/page/class_detail/class_detail_design_page.dart';
import 'package:vantan_connect/view_model/class_state/base_class_state_view_model.dart';
import 'package:vantan_connect/view_model/class_state/class_state_view_model.dart';
import 'package:vantan_connect/view_model/class_state/selection_class_state_view_model.dart';
import '../../model/class_state/class_state.dart';

class ClassListPage extends ConsumerStatefulWidget {
  const ClassListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ClassListPage> createState() => _ClassListPageState();
}

class _ClassListPageState extends ConsumerState<ClassListPage> {
  @override
  void initState() {
    super.initState();
    ref.read(classStateViewModel.notifier).fetchClassInfoToConfirmDetail();
    ref.read(baseClassStateViewModel.notifier).fetchBaseClassInfo();
    ref.read(selectionClassStateViewModel.notifier).fetchSelectionClassInfo();
  }

  @override
  Widget build(BuildContext context) {
    List<ClassState> baseClassList =
        ref.watch(baseClassStateViewModel.notifier).state;
    List<ClassState> selectionClassList =
        ref.watch(selectionClassStateViewModel.notifier).state;
    return Scaffold(
      appBar: AppBar(
        title: Text('授業一覧'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainText(
              text: 'ベースクラス',
              textStyle: titleMedium(FontWeight.w600, colorScheme.onBackground),
            ),
            SpaceBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: baseClassList.length,
                itemBuilder: (context, index) {
                  ClassState baseClass = baseClassList[index];
                  return Column(
                    children: [
                      GestureDetector(
                        child: RowTextWithBackgroundColor(
                          title: baseClass.className,
                          description: baseClass.className,
                          height: 90,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ClassDetailDesignPage(
                                classState: baseClass,
                              ),
                            ),
                          );
                        },
                      ),
                      SpaceBox(
                        height: 10,
                      )
                    ],
                  );
                },
              ),
            ),
            MainText(
              text: '選択クラス',
              textStyle: titleMedium(FontWeight.w600, colorScheme.onBackground),
            ),
            SpaceBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: selectionClassList.length,
                itemBuilder: (context, index) {
                  ClassState selectionClass = selectionClassList[index];
                  return Column(
                    children: [
                      GestureDetector(
                        child: RowTextWithBackgroundColor(
                          title: selectionClass.className,
                          description: selectionClass.className,
                          height: 90,
                        ),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ClassDetailDesignPage(
                                classState: selectionClass,
                              ),
                            ),
                          );
                        },
                      ),
                      SpaceBox(
                        height: 10,
                      )
                    ],
                  );
                },
              ),
            ),
            SpaceBox(height: 20),
          ],
        ),
      ),
    );
  }
}
