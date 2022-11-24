class User {
  User(this.name, this.attendance);

  User.fromJson(Map<String, dynamic> json)
      : name = json['名前'].toString(),
        attendance = json['出席状況'].toString();
  final String name;
  final String attendance;

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'名前': name, '出席状況': attendance};
}
