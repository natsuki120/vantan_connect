import 'package:freezed_annotation/freezed_annotation.dart';
part 'general_stuff.freezed.dart';
part 'general_stuff.g.dart';

@freezed
class GeneralStuff with _$GeneralStuff {
  const factory GeneralStuff({
    @Default('') String id,
    @Default('') String name,
    @Default('') String job,
    @Default('') String profileText,
    @Default('') String attendance,
    @Default(0) int attendedDay,
    @Default('') String accountNumber,
    @Default('') String userImagePath,
    @Default('') String rootCollection,
  }) = _GeneralStuff;

  factory GeneralStuff.fromJson(Map<String, dynamic> json) =>
      _$GeneralStuffFromJson(json);
}
