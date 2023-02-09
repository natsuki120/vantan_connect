import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StudentClassmateList extends StatelessWidget {
  const StudentClassmateList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: Column(
        children: [
          Text('名前'),
          Text('id'),
          Row(
            children: [
              Text('要素'),
              Text('要素'),
              Text('要素'),
            ],
          )
        ],
      ),
      trailing: Icon(Icons.abc),
    );
  }
}
