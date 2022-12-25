import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/domain/general_stuff/general_stuff.dart';
import 'package:vantan_connect/domain/school_term/school_term.dart';
import '../domain/lesson/lesson.dart';

class GeneralStuffRepository extends IGeneralStuffRepository {
  final firestore = FirebaseFirestore.instance;
  @override
  void createLesson(Lesson lesson, SchoolTerm schoolTerm) {
    final doc = firestore.doc(
      'all_class/${schoolTerm.departmentName}/${schoolTerm.yearPlan}/${schoolTerm.term}',
    );
    doc.set(lesson.toJson());
  }
}
