import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vantan_connect/use_case/state/class_document.dart';
import 'package:vantan_connect/view/organism/title_in_organism.dart';
import 'package:vantan_connect/view/token/color_schemes.g.dart';
import 'package:vantan_connect/view/token/space_box.dart';
import 'package:vantan_connect/view/token/style_by_platform.dart';

class DocumentTemplate extends ConsumerWidget {
  const DocumentTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _provider = ref.watch(filePickerProvider);
    const textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'aaa',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 360,
              height: 200,
              child: Center(
                  child: Text(
                _provider.fileName!,
                style: textStyle,
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () async {
                  if (await _provider.pickFileIsSuccess) {
                    const snackBar = SnackBar(content: Text('ピックしたよ！'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    const snackBar = SnackBar(content: Text('ピックしなかったよ！'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: const Text('ファイルを選択する'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              height: 2,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              width: 300,
              height: 200,
              //スクロールに対応
              child: SingleChildScrollView(
                child: Center(child: Text(_provider.fileContents!)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: _provider.pickSuccess
                    ? () async {
                        await _provider.readFileContents();
                      }
                    : null, // 使えない時は null をいれると色が変わってくれる
                child: const Text('選択したファイルを読み込む'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
