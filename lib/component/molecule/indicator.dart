import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/component/molecule/common/indicator.dart
import 'package:vantan_connect/component/atom/common/indicator_elm.dart';
=======
import 'package:vantan_connect/component/molecule/indicator_elm.dart';
>>>>>>> a341bdf (✨ create profile page and function edit profile):lib/component/organism/indicator.dart
import 'package:vantan_connect/const/space_box.dart';

class FourIndicator extends StatelessWidget {
  const FourIndicator({
    super.key,
    required this.firstPercent,
    required this.secondPercent,
    required this.thirdPercent,
    required this.forthPercent,
  });

  final double firstPercent;
  final double secondPercent;
  final double thirdPercent;
  final double forthPercent;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IndicatorElement(
          percent: firstPercent,
          width: 84,
        ),
        IndicatorElement(
          percent: secondPercent,
          width: 84,
        ),
        IndicatorElement(
          percent: thirdPercent,
          width: 84,
        ),
        IndicatorElement(
          percent: forthPercent,
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
