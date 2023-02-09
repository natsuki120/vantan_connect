import 'package:flutter/material.dart';

NavigatorPush(BuildContext context, {required Widget page}) {
  return Navigator.of(context).push(MaterialPageRoute(builder: (_) => page));
}

NavigatorPop(BuildContext context) {
  return Navigator.of(context).pop();
}
