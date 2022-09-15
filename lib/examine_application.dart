import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/const/space_box.dart';
import 'package:vantan_connect/model/applying_class_state/applying_class_state.dart';

class ExamineApplication extends StatelessWidget {
  const ExamineApplication({super.key, required this.applyingClassState});

  final ApplyingClassState applyingClassState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                Text('以下の申請をどうするか選択してください'),
                SpaceBox(height: 30),
                Container(
                  height: 100,
                  child: Card(
                    color: Colors.red,
                    child: Column(
                      children: [
                        // Text(
                        //   '生徒の名前： ${applyingClassState.name}',
                        //   style: TextStyle(color: Colors.white),
                        // ),
                        // Expanded(
                        //   child: ListView.builder(
                        //     physics: NeverScrollableScrollPhysics(),
                        //     itemCount: applyingClassState.className.length,
                        //     itemBuilder: (context, index) {
                        //       final className =
                        //           applyingClassState.className[index];
                        //       return Card(
                        //         child: Text('授業名: ${className}'),
                        //       );
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SpaceBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Consumer(
                builder: (context, ref, child) {
                  return ElevatedButton(
                    onPressed: () async {},
                    child: Text('却下する'),
                  );
                },
              ),
              Consumer(
                builder: (context, ref, child) {
                  return ElevatedButton(
                    onPressed: () async {},
                    child: Text('承諾する'),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
