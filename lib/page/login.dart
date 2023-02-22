import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vantan_connect/component/shared/single/riverpod/riverpod.dart';
import 'package:vantan_connect/component/shared/single/space_box/space_box.dart';
import 'package:vantan_connect/component/shared/single/student_list/student_list.dart';
import 'package:vantan_connect/domain/student/student.dart';
import 'package:vantan_connect/infrastructure/query_service/query_service_repository.dart';
import 'package:vantan_connect/page/test_app.dart';
import '../component/shared/single/color/color.dart';
import '../component/shared/single/text_style/text_style.dart';

class Login extends HookConsumerWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Student myAccount = ref.watch(myAccountProvider.notifier).state;
    final _currentSelection = useState(0);
    Map<int, Widget> _children = {
      0: Text('生徒'),
      1: Text('スタッフ'),
    };

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SpaceBox(height: 111),
            Text('ログイン', style: title1Bold(black)),
            SpaceBox(height: 65),
            SizedBox(
              width: 310.sp,
              child: MaterialSegmentedControl(
                horizontalPadding: EdgeInsets.symmetric(horizontal: 0),
                children: _children,
                selectionIndex: _currentSelection.value,
                borderColor: Colors.grey,
                selectedColor: Color(0xffE8DEF8),
                unselectedColor: Colors.white,
                selectedTextStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
                unselectedTextStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                onSegmentChosen: (int index) {
                  _currentSelection.value = index;
                },
              ),
            ),
            SpaceBox(height: 51),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: DropDownTextField(
                textFieldDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ユーザーを選択',
                ),
                // initialValue: "name4",
                clearOption: true,
                // enableSearch: true,
                // dropdownColor: Colors.green,
                searchDecoration: const InputDecoration(
                    hintText: "enter your custom hint text here"),
                validator: (value) {
                  if (value == null) {
                    return "Required field";
                  } else {
                    return null;
                  }
                },
                dropDownItemCount: 6,
                dropDownList: studentList
                    .map((student) => DropDownValueModel(
                        name: student.name, value: student.name))
                    .toList(),
                onChanged: (val) async {
                  myAccount = await QueryServiceRepositoryWhichUseFirebase()
                      .identifyStudent(name: val.name);
                },
              ),
            ),
            Spacer(),
            SizedBox(
              child: FilledButton(
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setString('name', myAccount.name);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      // 遷移先のクラス
                      builder: (BuildContext context) =>
                          TestApp(studentName: myAccount.name),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 110),
                  child: Text('始める', style: bodyBold(white)),
                ),
                style: FilledButton.styleFrom(backgroundColor: primary),
              ),
            ),
            SpaceBox(height: 47),
          ],
        ),
      ),
    );
  }
}
