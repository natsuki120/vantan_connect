import 'package:freezed_annotation/freezed_annotation.dart';
part 'name.freezed.dart';

@freezed
class Name with _$Name {
  const factory Name(String value) = _Name;
}

class NameConverter implements JsonConverter<Name, String> {
  const NameConverter();

  @override
  Name fromJson(String name) {
    return Name(name);
  }

  @override
  String toJson(Name name) {
    return name.value;
  }
}
