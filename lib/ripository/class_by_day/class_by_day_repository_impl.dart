import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vantan_connect/model/class_by_day_state/class_by_day_state.dart';
import 'class_by_day_repository.dart';

class ClassByDayRepositoryImpl implements ClassByDayRepository {
  final db = FirebaseFirestore.instance;
  @override
  Stream<List<ClassByDayState>> fetchClassByDayInfo() {
    final collection = db.collectionGroup('start_date').snapshots();
    return collection.map<List<ClassByDayState>>(
      (QuerySnapshot snapshot) => snapshot.docs
          .map(
            (DocumentSnapshot doc) =>
                ClassByDayState.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }
}
