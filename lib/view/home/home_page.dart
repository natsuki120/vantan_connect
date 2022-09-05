import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/ripository/user_repository.dart';
import 'package:vantan_connect/test_attendance.dart';
import 'package:vantan_connect/view_model/user_view_model.dart';

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

  // TODO リポジトリにめちゃくちゃ依存してるんですが、、、

  @override
  Widget build(BuildContext context) {
    ref.watch(userViewModel);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: ElevatedButton(
                child: Text('データ受信'),
                onPressed: () async {
                  await Navigator.of(context).pushReplacement(
                      MaterialPageRoute<TestAttendance>(
                          builder: (_) =>
                              TestAttendance('CS4PkGDqObM8cNT2k1dQwjvERxE2')));
                  print('押されたよ');
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                child: Text('出席する'),
                onPressed: () async {
                  await sendAttendanceState(widget.user!.uid);
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
            Text(
                '${ref.watch(userViewModel.notifier).state.name}の出席日数は${ref.watch(userViewModel.notifier).state.attendedDay}日です')
          ],
        ),
      ),
    );
  }
}
