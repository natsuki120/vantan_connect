import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/space_box.dart';

import '../molecule/indicator_elm.dart';

class FourIndicator extends StatelessWidget {
  const FourIndicator({
    super.key,
    required this.firstPercent,
    required this.secondPercent,
    required this.thirdPercent,
    required this.forthPercent,
    required this.width,
    required this.spaceWidth,
  });

  final double firstPercent;
  final double secondPercent;
  final double thirdPercent;
  final double forthPercent;
  final double width;
  final double spaceWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IndicatorElement(percent: firstPercent, width: width),
        SpaceBox(width: spaceWidth),
        IndicatorElement(percent: secondPercent, width: width),
        SpaceBox(width: spaceWidth),
        IndicatorElement(percent: thirdPercent, width: width),
        SpaceBox(width: spaceWidth),
        IndicatorElement(percent: forthPercent, width: width),
      ],
    );
  }
}

class ThreeIndicator extends StatelessWidget {
  const ThreeIndicator({
    super.key,
    required this.firstPercent,
    required this.secondPercent,
    required this.thirdPercent,
  });

  final double firstPercent;
  final double secondPercent;
  final double thirdPercent;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IndicatorElement(
          percent: firstPercent,
          width: 113,
        ),
        const SpaceBox(width: 2),
        IndicatorElement(
          percent: secondPercent,
          width: 113,
        ),
        const SpaceBox(width: 2),
        IndicatorElement(
          percent: thirdPercent,
          width: 113,
        ),
      ],
    );
  }
}
