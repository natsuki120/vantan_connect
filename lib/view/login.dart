import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/vantan_life.dart';
import 'package:vantan_connect/view/home/home_page.dart';
import 'package:vantan_connect/view/profile_page.dart';

import '../view_model/user_view_model.dart';

class Login extends StatelessWidget {
  String infoText = '';
  // 入力したメールアドレス・パスワード
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ログイン'),
      ),
      body: Center(
          child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                  onChanged: (text) {
                    email = text;
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'パスワード',
                  ),
                  onChanged: (text) {
                    password = text;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                Consumer(builder: (context, ref, child) {
                  return ElevatedButton(
                    onPressed: () async {
                      // 追加の処理
                      try {
                        // メール/パスワードでログイン
                        final auth = FirebaseAuth.instance;
                        final result = await auth.signInWithEmailAndPassword(
                          email: email,
                          password: password,
                        );
                        await ref
                            .read(userViewModel.notifier)
                            .fetchUser(result.user!.uid);
                        await Navigator.of(context).pushReplacement(
                          MaterialPageRoute<HomePage>(
                            builder: (context) {
                              return VantanLife(user: result.user!);
                            },
                          ),
                        );
                      } catch (e) {
                        /* --- 省略 --- */
                      }
                    },
                    child: Text('ログイン'),
                  );
                }),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
