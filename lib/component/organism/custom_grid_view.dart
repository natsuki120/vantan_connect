import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView(
      {Key? key,
      required this.itemCount,
      required this.crossAxisCount,
      required this.child})
      : super(key: key);

  final int itemCount;
  final int crossAxisCount;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: 1,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Padding(padding: const EdgeInsets.all(8.0), child: child);
      },
    );
  }
}
