import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_use/flutter_use.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/use_case/state/class_document.dart';
import 'package:vantan_connect/view/molecule/title_in_molecule.dart';
import 'package:vantan_connect/view/page/class_document_view_page.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/navigator.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';
import '../../domain/class/class.dart';
import '../token/space_box.dart';
import '../organism/done_class_card.dart';

class DoneClassHistoryPage extends HookConsumerWidget {
  const DoneClassHistoryPage({super.key, required this.classInfo});
  final Class classInfo;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(classDocumentNotifier);
    useEffectOnce(() {
      ref.watch(classDocumentNotifier.notifier).fetchClassDocument(classInfo);
      return;
    });
    final documentList = ref.watch(classDocumentNotifier.notifier).state;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TitleInMolecule(
                text: '並び替え',
                textStyle: bodyRegular(colorScheme.onBackground),
              ),
              Icon(Icons.arrow_drop_down)
            ],
          ),
          ListView.builder(
            itemCount: documentList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final document = documentList[index];
              return Column(
                children: [
                  GestureDetector(
                    child: DoneClassCard(
                      title: document.title,
                      description: document.description,
                    ),
                    onTap: () => NavigatorPush(
                      context,
                      page: ClassDocumentViewPage(
                        classDocument: document,
                        classInfo: classInfo,
                      ),
                    ),
                  ),
                  SpaceBox(height: 16.h),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
