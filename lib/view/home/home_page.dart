import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/api/gsheet.dart';
import 'package:vantan_connect/api/user_fields.dart';

import '../../ripository/user_repository.dart';
import '../../view_model/user_view_model.dart';

class HomePage extends ConsumerStatefulWidget {
  HomePage({super.key, required this.user});

  final User? user;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
    Future(() async {
      await ref.watch(userViewModel.notifier).fetchUser(widget.user!.uid);
    });
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
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
