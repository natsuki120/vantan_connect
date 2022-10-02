import 'package:flutter/cupertino.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  late FlutterDriver driver;
  setUpAll(() async {
    driver = await FlutterDriver.connect();
  });

  test('Counter increments smoke test', () async {
    await driver.tap(find.byValueKey('loginKey'));
    await driver.enterText('test@test.jp');
    await driver.tap(find.byValueKey('passwordKey'));
    await driver.enterText('testtest');
    await driver.tap(find.text('ログインする'));
    await driver.waitUntilNoTransientCallbacks();
  });
}
