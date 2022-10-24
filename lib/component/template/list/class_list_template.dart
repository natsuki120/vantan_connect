import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/space_box.dart';
import 'package:vantan_connect/component/molecule/row_text_with_background_color.dart';

class ClassListTemplate extends StatelessWidget {
  const ClassListTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('授業一覧'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      RowTextWithBackgroundColor(
                        title: 'ベースクラス',
                        description: 'Flutter',
                        height: 90,
                      ),
                      SpaceBox(height: 20),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
