import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vantan_connect/domain/school_term/school_term.dart';
part 'executive_stuff.freezed.dart';
part 'executive_stuff.g.dart';

@freezed
class ExecutiveStuff with _$ExecutiveStuff {
  const factory ExecutiveStuff({
    @Default('') String id,
    @Default('') String name,
    @Default('') String job,
    @Default('') String profileText,
    @Default('') String attendance,
    @Default(0) int attendedDay,
    @Default('') String accountNumber,
    @Default('') String userImagePath,
    @Default('') String rootCollection,
  }) = _ExecutiveStuff;

  factory ExecutiveStuff.fromJson(Map<String, dynamic> json) =>
      _$ExecutiveStuffFromJson(json);
}

abstract class IExecutiveStuffRepository {
  void decideNewSchoolTerm(SchoolTerm schoolTerm) {}
}
