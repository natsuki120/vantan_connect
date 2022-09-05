import 'package:flutter/material.dart';
import 'package:vantan_connect/component/atom/indicator_elm.dart';
import 'package:vantan_connect/const/space_box.dart';

class FourIndicator extends StatelessWidget {
  const FourIndicator({
    required this.first,
    required this.second,
    required this.third,
    required this.forth,
    super.key,
  });

  final double first;
  final double second;
  final double third;
  final double forth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IndicatorElement(
          percent: first,
          width: 84,
        ),
        IndicatorElement(
          percent: second,
          width: 84,
        ),
        IndicatorElement(
          percent: third,
          width: 84,
        ),
        IndicatorElement(
          percent: forth,
          width: 84,
        ),
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
        SpaceBox(width: 2),
        IndicatorElement(
          percent: secondPercent,
          width: 113,
        ),
        SpaceBox(width: 2),
        IndicatorElement(
          percent: thirdPercent,
          width: 113,
        ),
      ],
    );
  }
}
