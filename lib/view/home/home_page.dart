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
                child: Text('データ受信'),
                onPressed: () {
                  getUsers('nao');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
