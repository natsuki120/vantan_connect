import 'package:cloud_firestore/cloud_firestore.dart';
import '../../data_model/class/class.dart';
import '../../data_model/class_by_day/class_by_day.dart';
import 'class_by_day_repository.dart';

class ClassByDayRepositoryImpl implements ClassByDayRepository {
  final db = FirebaseFirestore.instance;
  @override
  Stream<List<ClassByDay>> fetchClassByDayInfo(Class classState) {
    final collection = db
        .collection(
            '/all_class/VTA_class/2022/first_semester/all_class/${classState.name}/start_date/')
        .snapshots();
    return collection.map<List<ClassByDay>>(
      (QuerySnapshot snapshot) => snapshot.docs
          .map(
            (DocumentSnapshot doc) =>
                ClassByDay.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }
}
