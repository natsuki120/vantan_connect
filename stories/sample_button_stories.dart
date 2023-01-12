import 'package:flutter/material.dart';
import 'package:vantan_connect/view/template/management_screen_template.dart';
import 'sample_button.dart';

Widget primary() => const Button('Button', ButtonStyles.primary);

Widget secondary() => const Button('Button', ButtonStyles.secondary);

Widget disabled() => const Button('Button', ButtonStyles.disabled);

Widget macOSTest() => const ManagementScreenTemplate();
