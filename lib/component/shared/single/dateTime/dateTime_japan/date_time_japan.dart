import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:vantan_connect/component/shared/single/dateTime/check_leap_year.dart';

//とりあえず代用的なものだけを追加しました。必要に応じて足してください

final yearProvider = StreamProvider<String>((ref) => randomValueStream());

Stream<String> randomValueStream() async* {
  initializeDateFormatting('ja');
  if (checkLeapYear(DateTime.now()) == true) {
    Stream.periodic(
      Duration(days: 366),
      (_) => DateFormat.y('ja').format(DateTime.now()),
      //表示例　 2000年 ※うるう年
    );
  } else {
    Stream.periodic(
      Duration(days: 365),
      (_) => DateFormat.y('ja').format(DateTime.now()),
      //表示例　 2023年　※うるう年ではない場合
    );
  }
}

final monthProvider = StreamProvider<String>((ref) async* {
  initializeDateFormatting('ja');
  if ((checkLeapYear(DateTime.now()) == true) && (DateTime.now().month == 2)) {
    Stream.periodic(
      Duration(days: 29),
      (_) => DateFormat.M('ja').format(DateTime.now()),
      //表示例　 29日 ※うるう年かつ2月
    );
  } else if ((checkLeapYear(DateTime.now()) == false) &&
      (DateTime.now().month == 2)) {
    Stream.periodic(
      Duration(days: 28),
      (_) => DateFormat.M('ja').format(DateTime.now()),
      //表示例　 28日 ※通常2月
    );
  } else if ((checkLeapYear(DateTime.now()) == false) &&
      (DateTime.now().month == 4 | 6 | 9 | 11)) {
    Stream.periodic(
      Duration(days: 30),
      (_) => DateFormat.M('ja').format(DateTime.now()),
      //表示例　 30日
    );
  } else {
    Stream.periodic(
      Duration(days: 31),
      (_) => DateFormat.M('ja').format(DateTime.now()),
      //表示例　31日
    );
  }
});

final dateProvider = StreamProvider<String>((ref) {
  initializeDateFormatting('ja');
  return Stream.periodic(
    Duration(days: 1),
    (_) => DateFormat.d('ja').format(DateTime.now()),
    //表示例 15日
  );
});

final dayProvider = StreamProvider<String>((ref) {
  initializeDateFormatting('ja');
  return Stream.periodic(
    Duration(days: 7),
    (_) => DateFormat.EEEE('ja').format(DateTime.now()),
    //表示例　水曜日
  );
});

final minuteProvider = StreamProvider<String>((ref) {
  initializeDateFormatting('ja');
  return Stream.periodic(
    Duration(minutes: 45),
    (_) => DateFormat.m('ja').format(DateTime.now()),
    //表示例 45 ※ 分は含まれない
  );
});
final secondProvider = StreamProvider<String>((ref) {
  initializeDateFormatting('ja');
  return Stream.periodic(
    Duration(seconds: 1),
    (_) => DateFormat.s('ja').format(DateTime.now()),
    //表示例 15   ※秒は含まれない
  );
});
