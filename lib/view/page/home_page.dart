import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/view_model/class_by_day_state/class_by_day_view_model.dart';
import 'package:vantan_connect/view_model/class_state/class_state_view_model.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(classViewModel);
    ref.watch(classByDayStateViewModel);
    return Scaffold(
      appBar: AppBar(
          // automaticallyImplyLeading: false,
          ),
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
