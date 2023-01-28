import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/domain/student/student.dart';
import 'package:vantan_connect/domain/value/class_name.dart';

class StudentRepository extends IStudentRepository {
  final firestore = FirebaseFirestore.instance;

  // TODO 出席数は他の生徒にも見せていいのか話し合う
  @override
  void attendanceLesson(
      {required Student student, required ClassName className}) {
    final doc = firestore
        .collection(
            'v1/private/${student.id}/writeOnly/Lesson/${className.name}/${DateTime.now().month}.${DateTime.now().day}')
        .doc();
    doc.set({'attendance': true});
  }
}
