import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

//とりあえず代用的なものだけを追加しました。必要に応じて足してください

final yearProvider = StreamProvider<String>((ref) {
  initializeDateFormatting('ja');
  return Stream.periodic(
    Duration(seconds: 0),
    (_) => DateFormat.y('ja').format(DateTime.now()),
    //表示例　 2023年
  );
});

final monthProvider = StreamProvider<String>((ref) {
  initializeDateFormatting('ja');
  return Stream.periodic(
    Duration(seconds: 0),
    (_) => DateFormat.M('ja').format(DateTime.now()),
    //表示例 3月
  );
});
final dateProvider = StreamProvider<String>((ref) {
  initializeDateFormatting('ja');
  return Stream.periodic(
    Duration(seconds: 0),
    (_) => DateFormat.d('ja').format(DateTime.now()),
    //表示例 15日
  );
});

final dayProvider = StreamProvider<String>((ref) {
  initializeDateFormatting('ja');
  return Stream.periodic(
    Duration(seconds: 0),
    (_) => DateFormat.EEEE('ja').format(DateTime.now()),
    //表示例　水曜日
  );
});

final minuteProvider = StreamProvider<String>((ref) {
  initializeDateFormatting('ja');
  return Stream.periodic(
    Duration(seconds: 0),
    (_) => DateFormat.m('ja').format(DateTime.now()),
    //表示例 45 ※ 分は含まれない
  );
});
final secondProvider = StreamProvider<String>((ref) {
  initializeDateFormatting('ja');
  return Stream.periodic(
    Duration(seconds: 0),
    (_) => DateFormat.s('ja').format(DateTime.now()),
    //表示例 15   ※秒は含まれない
  );
});
