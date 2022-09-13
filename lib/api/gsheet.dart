// import 'package:gsheets/gsheets.dart';
// import 'package:vantan_connect/api/user_fields.dart';
//
// import '../model/user_data_of_attendance.dart';
//
// const credintial = r'''{
//   "type": "service_account",
//   "project_id": "vantan-connect",
//   "private_key_id": "6d2041b6fb4ca4b77fd80277be10e8196d129a04",
//   "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDKDHC9OIrNHe+R\n/CPnTOr7VGijK6KphHRY+781/zu/AuBBQm3gNiRIkaESZPSCXkXB24dQB8oCdaEX\nWToGHBXPmCaitoN8WY780Dt6tl8GishFXErFGH3x4wC6yR45ZpMnYDsi3BkIiL/5\nPnfcaHirmDR1P1DvNCgnCqHTZSaninYGO05lmIe/24s2TLNcsCZZFC0cJIK2uunq\nifcarBIwS/9BFh/vONqbRTpNK1k9GPJ2IUf/Fkk0HrbCInB09+cRf3fH+1zRr9L6\nwHlPFgHUTdmysGc/blOQKZQWlEvr88xGTrr9rmVpuCh6YMJtqsHeqmii+CKG0avI\nU3wejVvvAgMBAAECggEALiNgHT2LqKJE4kO/GSL9582TJWuh9e7auLUoKVby2D/6\nYLygJZqHd5DVxMML+Lc5W7bbM+HLdftRgWjtMJb6PhEDBZYC+YLj/YQ5iOCbW32W\nlQwpwM9Cd1l8garKfZYYVV4Ksv+qscG0gOCMc2bh42Fa3UlLnIv+/UdWw9St2oUB\nvNzFf5IgN9ed3Tr5//gEAJemvPSP9EaEsalYNWdPwIe7tzYSA0IHEUS5qKc6Qtkq\ng8g/pbABBaY2V+By2PXKgr+oQ7XXRRY7SLY0BIesmShlPdQzuH8EK9DxYW/giC2D\nypMtW00GHYvczL7RdNsd3ZKaIkBmtHhFGXrOYDQftQKBgQD+pYo4F00ng5XDkq2Q\n9YJtl1ONLH1i6qvF2V6+W2eql1JY8ULJZfctqlzROWaH/PiBq6inxkuKdJ1y67Qp\naFkYFJ5bWb8u2N1xgn1QmhyjE2EHMjuU2/kp2l5a3sf5F82VcPmSH2jNvC20roWj\nCHToRXLSv5ij8SG9Zf9WNMZHywKBgQDLH1aMIn4MKyKbOdueB3P+YpA8GFfHjvuL\n5cDMgS47jWLY8CEvBAIyuNrhfz9xey+8VynjWwBcPZBNIhpPEKV9K0j6gMsVYiBa\nJj0+tbcFs91glJmBO/SxpVpfLaH8mKu+hnUW1JD0VwcOHch9oR92hps5d4cPuQ3p\nEYNSBVgP7QKBgQCTZOJCYUppasLPNyF73H+oS4UzG+Nf1BGlLZKngGTa20fw74UG\n6hxOtGORPzZX1FdLRz8SDbc/5wwTrtbTePDI/XZDzgjZZvGWeD9s3idhRSBOeAcA\nvOrWDO28j2MUjXCT5Zavu7qAC0IxaSs1GPoCT+CMmBYUHsi2xkkrbtSuTQKBgEo7\njrayGFy8Gu6dy3xKfwK15L6Bqvrcb2PmOHrEry/GcRyVTZtQHLmKwztr9LS1b3Gm\nbUGQzWXofeciknjYvZIsEoSyMwYCkY5AsVtMr7Ge1UXpqNwJHFkb9BYaqDuXVBTS\nMNKCJuOVNpfbHJ2FF+mKMgpje3GskL/fzZ1ZJKDVAoGAVnPM6P1um1Osp5LP1AFu\nHUBtXHDQYXIHDEYEpuVp1o4NpHr2zApfDaekDiHFZjx5taZ/Fk4qpAHOx7PPb/8a\nQGk7CJhrVh6dHlv+MT2PIG9rdsrW46gDDmMvoDAKoFHLI9AxzC9kEftuQazD7UHt\nFt0SI4H4C+j6Sapnax6p+qs=\n-----END PRIVATE KEY-----\n",
//   "client_email": "vantan-app@vantan-connect.iam.gserviceaccount.com",
//   "client_id": "102141967178724685956",
//   "auth_uri": "https://accounts.google.com/o/oauth2/auth",
//   "token_uri": "https://oauth2.googleapis.com/token",
//   "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
//   "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/vantan-app%40vantan-connect.iam.gserviceaccount.com"
// }
// ''';
//
// const sheetId = '1XxHgQDLd71Qgk10Jt_ot3_MXmf0wIbsyaZGfjdwfE6U';
// final gSheet = GSheets(credintial);
// Worksheet? userSheets;
//
// Future<void> gSheetInit() async {
//   final spreadsheet = await gSheet.spreadsheet(sheetId);
//   userSheets = await getWorkSheet(spreadsheet, title: '生徒');
//   final firstRow = UserFields().getFields();
//   await userSheets!.values.insertRow(1, firstRow);
// }
//
// Future<Worksheet> getWorkSheet(Spreadsheet spreadsheet,
//     {required String title}) async {
//   try {
//     return await spreadsheet.addWorksheet(title);
//   } catch (e) {
//     return await spreadsheet.worksheetByTitle(title)!;
//   }
// }
//
// Future<void> register(Map<String, dynamic> rowList) async {
//   if (userSheets == null) {
//     return;
//   }
//   await userSheets!.values.map.appendRow(rowList);
// }
//
// Future<void> insert(String name, List list) async {
//   if (userSheets == null) {
//     return;
//   }
//   final column = await userSheets!.values.lastColumn();
//   final lastColumn = column == null ? 0 : int.tryParse(column.first) ?? 5;
//   final row = await userSheets!.values.rowByKey(name);
//   await userSheets!.values.insertValue('1', row: userRow, column: lastColumn);
// }
//
// Future<User?> getByName(String name) async {
//   if (userSheets == null) {
//     return null;
//   }
//   final json = await userSheets!.values.map.rowByKey(name, fromColumn: 1);
//   if (json == null) {
//     print('q');
//     return null;
//   } else {
//     return User.fromJson(json);
//   }
// }
