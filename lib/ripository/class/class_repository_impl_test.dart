import 'package:vantan_connect/model/class_state/class_state.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';
import 'package:vantan_connect/ripository/class/class_repository.dart';

class ClassRepositoryImplTest extends ClassRepository {
  List<ClassState> data = [
    ClassState(className: 'flutter'),
    ClassState(className: 'UI/UX'),
    ClassState(className: 'マーケティング'),
  ];

  List<Map<String, dynamic>> dataMap = [
    {'className': 'flutter'},
    {'className': 'UI/UX'},
    {'className': 'マーケティング'}
  ];

  @override
  Stream<List<ClassState>> fetchClassInfoWhichStudentRegistered() {
    List<ClassState> userStateList = [];
    int passCount = 0;
    data.forEach((element) {
      userStateList.add(element);
    });
    if (passCount == data.length) {
      return Stream.value(userStateList);
    } else {
      return Stream.empty();
    }
  }

  @override
  Stream<List<ClassState>> fetchClassInfoToConfirmDetail() {
    List<ClassState> classList = [];
    int passCount = 0;
    dataMap.forEach((element) {
      classList.add(ClassState.fromJson(element));
      passCount += 1;
    });
    if (passCount == data.length) {
      return Stream.value(classList);
    } else {
      return Stream.empty();
    }
  }

  @override
  Future<void> applyClassToStuff(
      UserState userState, List<ClassState> classStateList) async {}

  Future<List> printThings(Stream data) async {
    List list = [];
    await for (var testData in data) {
      for (var x in testData) {
        list.add(x);
      }
    }
    return list;
  }
}
