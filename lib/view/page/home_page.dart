import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vantan_connect/buisiness_logic/provider/notification_to_class_time.dart';

class HomePage extends HookConsumerWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(notificationToClassTime(DateTime.now()));
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('more'),
            ),
            GestureDetector(
              child: ListTile(
                title: Text("授業一覧"),
                trailing: Icon(Icons.arrow_forward),
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Container(),
                ),
              ),
            ),
            GestureDetector(
              child: ListTile(
                title: Text("生徒一覧"),
                trailing: Icon(Icons.arrow_forward),
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Container(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
