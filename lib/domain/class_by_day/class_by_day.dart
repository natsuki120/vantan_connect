import 'package:freezed_annotation/freezed_annotation.dart';

import '../date_time_converter.dart';
part 'class_by_day.freezed.dart';
part 'class_by_day.g.dart';

@freezed
class ClassByDay with _$ClassByDay {
  factory ClassByDay({
    @Default('') String id,
    @Default('') String className,
    @DateTimeConverter() DateTime? day,
    @DateTimeConverter() DateTime? announce,
    @Default(0) int timeTable,
  }) = _ClassByDay;

  factory ClassByDay.fromJson(Map<String, dynamic> json) =>
      _$ClassByDayFromJson(json);
}
