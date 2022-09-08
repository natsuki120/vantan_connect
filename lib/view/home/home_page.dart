import 'package:flutter/material.dart';
import 'package:vantan_connect/api/gsheet.dart';
import 'package:vantan_connect/api/user_fields.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future getUsers(String name) async {
    final user = await getByName(name);
    print(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                child: Text('データ送信'),
                onPressed: () {
                  final userInfo = [
                    {UserFields.name: 'nao', UserFields.attendance: '欠席'}
                  ];
                  insert(userInfo);
                },
              ),
            ),
            Container(
              child: ElevatedButton(
<<<<<<< HEAD
                child: Text('データ受信'),
                onPressed: () {
                  getUsers('nao');
=======
                child: Text('出席する'),
                onPressed: () async {
                  await UserRepository().sendAttendanceState(widget.user!.uid);
                  final snackBar = SnackBar(
                    backgroundColor: Colors.black,
                    content: Text('出席データを送信しました'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  print('押されたよ');
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                child: Text('欠席する'),
                onPressed: () async {
                  final snackBar = SnackBar(
                    backgroundColor: Colors.red,
                    content: Text('欠席データを送信しました'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  print('押されたよ');
>>>>>>> a341bdf (✨ create profile page and function edit profile)
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
