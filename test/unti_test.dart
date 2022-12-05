// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vantan_connect/domain/class/class.dart';
import 'package:vantan_connect/domain/class_dto/class_dto.dart';
import 'package:vantan_connect/infrastructure/class_query_service/class_query_service.dart';

import 'package:vantan_connect/main.dart';

void main() {
  test('Counter increments smoke test', () async {
    ClassQueryService classQueryService = ClassQueryService();
    final test = classQueryService.fetchAttendanceBook(Class(name: 'UI.UX'));
    expect(test.listen((event) => event),
        ClassDto(classInfo: Class(name: 'UI/UX')));
  });
}
