import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/new_atomic_design/organism/list_year_sidebar.dart';
import 'package:vantan_connect/new_atomic_design/template/create_new_term_modal_template.dart';

class YearCalenderTemplate extends ConsumerWidget {
  const YearCalenderTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListYearSidebar(
        callback: () => createNewTermModalTemplate(context),
      ),
    );
  }
}
