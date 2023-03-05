import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/main.dart';
import 'package:vantan_connect/page/test_app.dart';
import 'sample_button.dart';

Widget primary() => const Button('Button', ButtonStyles.primary);

Widget secondary() => const Button('Button', ButtonStyles.secondary);

Widget disabled() => const Button('Button', ButtonStyles.disabled);

Widget TestAppTest() => ProviderScope(child: MyApp());
