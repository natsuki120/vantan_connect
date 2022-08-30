import 'package:flutter/material.dart';
import 'package:vantan_connect/api/gsheet.dart';
import 'package:vantan_connect/model/user_data_of_attendance.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User? user;

  Future getUsers(String name) async {
    user = await getByName(name);
    setState(() {});
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
                  final user = [User('nao', '出席').toJson()];
                  insert(user);
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                child: Text('データ受信'),
                onPressed: () {
                  getUsers('aiueo');
                },
              ),
            ),
            Center(
              child: Text(
                user == null ? '' : '${user!.name}は${user!.attendance}しています',
              ),
            )
          ],
        ),
      ),
    );
  }
}
