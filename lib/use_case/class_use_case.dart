import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/infrastructure/class_repository.dart';
import '../domain/class/class.dart';

class ClassUseCase extends StateNotifier<List<Class>> {
  ClassUseCase(this.classRepository) : super([]);
  final IClassRepository classRepository;

  void fetchClassInfoToConfirmDetail() {
    final classState = classRepository.fetchClassInfoToConfirmDetail();
    classState.listen((event) => state = [...event]);
  }
}

final classUseCase = StateNotifierProvider(
  (ref) => ClassUseCase(
    ClassRepository(db: FirebaseFirestore.instance),
  ),
);
