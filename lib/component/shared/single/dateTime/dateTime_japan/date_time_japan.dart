import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:vantan_connect/component/shared/single/dateTime/check_leap_year.dart';

//とりあえず代用的なものだけを追加しました。必要に応じて足してください

final yearProvider = StreamProvider<String>((ref) async* {
  initializeDateFormatting('ja');
  yield DateFormat.y('ja').format(DateTime.now());
  if (checkLeapYear(DateTime.now()) == true) {
    yield* Stream.periodic(
      Duration(days: 366),
      (_) => DateFormat.y('ja').format(DateTime.now()),
      //表示例　 2000年 ※うるう年
    );
  } else {
    yield* Stream.periodic(
      Duration(days: 365),
      (_) => DateFormat.y('ja').format(DateTime.now()),
      //表示例　 2023年　※うるう年ではない場合
    );
  }
});

final monthProvider = StreamProvider<String>((ref) async* {
  initializeDateFormatting('ja');
  yield DateFormat.M('ja').format(DateTime.now());
  if ((checkLeapYear(DateTime.now()) == true) && (DateTime.now().month == 2)) {
    yield* Stream.periodic(
      Duration(days: 29),
      (_) => DateFormat.M('ja').format(DateTime.now()),
      //表示例　 29日 ※うるう年かつ2月
    );
  } else if ((checkLeapYear(DateTime.now()) == false) &&
      (DateTime.now().month == 2)) {
    yield* Stream.periodic(
      Duration(days: 28),
      (_) => DateFormat.M('ja').format(DateTime.now()),
      //表示例　 28日 ※通常2月
    );
  } else if ((checkLeapYear(DateTime.now()) == false) &&
      (DateTime.now().month == 4 | 6 | 9 | 11)) {
    yield* Stream.periodic(
      Duration(days: 30),
      (_) => DateFormat.M('ja').format(DateTime.now()),
      //表示例　 30日
    );
  } else {
    yield* Stream.periodic(
      Duration(days: 31),
      (_) => DateFormat.M('ja').format(DateTime.now()),
      //表示例　31日
    );
  }
});

final dateProvider = StreamProvider<String>((ref) async* {
  initializeDateFormatting('ja');
  yield DateFormat.d('ja').format(DateTime.now());
  yield* Stream.periodic(
    Duration(days: 1),
    (_) => DateFormat.d('ja').format(DateTime.now()),
    //表示例 15日
  );
});

final dayProvider = StreamProvider<String>((ref) async* {
  initializeDateFormatting('ja');
  yield DateFormat.EEEE('ja').format(DateTime.now());
  yield* Stream.periodic(
    Duration(days: 7),
    (_) => DateFormat.EEEE('ja').format(DateTime.now()),
    //表示例　水曜日
  );
});

//描画時の偏差を埋めるのが難しい上　現状使用しないので一旦保留
// final minuteProvider = StreamProvider<String>((ref) async* {
//   initializeDateFormatting('ja');
//   yield DateFormat.m('ja').format(DateTime.now());
//   yield* Stream.periodic(
//     Duration(seconds: 60 - DateTime.now().second),
//     (_) => DateFormat.m('ja').format(DateTime.now()),
//     //表示例 45 ※ 分は含まれない
//   );
// });

final secondProvider = StreamProvider<String>((ref) async* {
  initializeDateFormatting('ja');
  yield DateFormat.s('ja').format(DateTime.now());
  yield* Stream.periodic(
    Duration(milliseconds: 1000 - DateTime.now().millisecond),
    (_) => DateFormat.s('ja').format(DateTime.now()),
    //表示例 15   ※秒は含まれない
  );
});
