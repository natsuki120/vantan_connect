import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vantan_connect/view/home/home_page.dart';

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
                ElevatedButton(
                  onPressed: () async {
                    // 追加の処理
                    try {
                      // メール/パスワードでログイン
                      final FirebaseAuth auth = FirebaseAuth.instance;
                      final result = await auth.signInWithEmailAndPassword(
                        email: email,
                        password: password,
                      );
                      // ログインに成功した場合
                      // チャット画面に遷移＋ログイン画面を破棄
                      await Navigator.of(context).pushReplacement(
                        MaterialPageRoute<HomePage>(builder: (context) {
                          print(result.user!.uid);
                          return HomePage(user: result.user!);
                        }),
                      );
                    } catch (e) {
                      /* --- 省略 --- */
                    }
                  },
                  child: Text('ログイン'),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
