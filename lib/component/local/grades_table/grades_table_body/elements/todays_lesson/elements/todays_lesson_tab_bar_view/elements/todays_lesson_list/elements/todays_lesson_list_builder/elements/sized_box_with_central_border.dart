import 'package:flutter/material.dart';

import '../../../../../../../../../../../../shared/single/color.dart';

class SizedBoxWithCentralBorder extends StatelessWidget {
  SizedBoxWithCentralBorder({
    super.key,
    this.flex = 0,
    required this.height,
  });

  final double height;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Row(
        children: [
          Expanded(
            flex: flex,
            child: Container(),
          ),
          Expanded(
            flex: 10,
            child: Center(
                child: Container(
              height: 1,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color: borderLowEmphasis,
                ),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
