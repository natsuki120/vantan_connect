import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vantan_connect/component/template/document_list_template.dart';
import 'package:vantan_connect/home_page.dart';

void main() {
  testWidgets('授業の一覧画面テスト', (WidgetTester tester) async {
    await tester
        .pumpWidget(ProviderScope(child: MaterialApp(home: DocumentList())));
    await tester.pump();
    expect(find.byWidget(Container()), findsWidgets);
  });
}
