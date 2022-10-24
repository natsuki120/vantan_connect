import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/model/date_time_converter.dart';
part 'class_by_day_state.freezed.dart';
part 'class_by_day_state.g.dart';

@freezed
class ClassByDayState with _$ClassByDayState {
  factory ClassByDayState({
    @Default('') String id,
    @Default('') String className,
    @DateTimeConverter() DateTime? day,
    @DateTimeConverter() DateTime? announce,
    @Default(0) int timeTable,
  }) = _ClassByDayState;

  factory ClassByDayState.fromJson(Map<String, dynamic> json) =>
      _$ClassByDayStateFromJson(json);
}
