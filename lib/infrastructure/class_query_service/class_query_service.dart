import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:vantan_connect/domain/class/value/class_teacher.dart';
import 'package:vantan_connect/domain/teacher/teacher.dart';
import 'package:vantan_connect/use_case/i_query_service/i_class_query_service.dart';
import '../../domain/class_dto/class_dto.dart';

class ClassQueryService extends IClassQueryService {
  final firestore = FakeFirebaseFirestore();

  ClassQueryService(List<ClassDto> classDtoList) {
    for (int i = 0; i < classDtoList.length; i++) {
      ClassDto classInfo = classDtoList[i];
      this.registerClass(classInfo);
    }
  }

  @override
  Future<Teacher> fetchTeacherInfo(ClassTeacher classTeacher) {
    // TODO: implement fetchTeacherInfo
    throw UnimplementedError();
  }

  @override
  Stream<List<ClassDto>> fetchMyClassInfo() {
    final collection = firestore.collection('my_class').snapshots();
    return collection.map<List<ClassDto>>(
      (QuerySnapshot snapshot) => snapshot.docs
          .map(
            (DocumentSnapshot doc) =>
                ClassDto.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  @override
  void registerClass(ClassDto classDto) {
    final collection = firestore
        .collection('all_class/VTA_class/2022/first_semester/all_class');
    collection.add({
      'id': collection.doc().id,
      'classInfo': classDto.classInfo!.toJson(),
      'attendanceBook': classDto.attendanceBook!.toJson(),
      'teacher': classDto.teacher!.map((e) => e.toJson()).toList(),
      'student': classDto.student!.map((e) => e.toJson()).toList(),
      'document': classDto.document!.map((e) => e.toJson()).toList(),
    });
  }

  // TODO classIDをつける
  // doc('mu_class/${classInfo.id}')みたいな
  @override
  void registerMyClass(ClassDto classDto) {
    final document = firestore.doc('my_class/${classDto.id}');
    document.set({
      'id': classDto.id,
      'classInfo': classDto.classInfo!.toJson(),
      'attendanceBook': classDto.attendanceBook!.toJson(),
      'teacher': classDto.teacher!.map((e) => e.toJson()).toList(),
      'student': classDto.student!.map((e) => e.toJson()).toList(),
      'document': classDto.document!.map((e) => e.toJson()).toList(),
    });
  }

  @override
  Stream<List<ClassDto>> fetchBaseClassInfo() {
    final collection = firestore
        .collection('all_class/VTA_class/2022/first_semester/all_class')
        .where('classInfo.baseClass', isEqualTo: '')
        .snapshots();
    return collection.map<List<ClassDto>>(
      (QuerySnapshot snapshot) => snapshot.docs
          .map(
            (DocumentSnapshot doc) =>
                ClassDto.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  @override
  Stream<List<ClassDto>> fetchSelectableClassInfo(ClassDto classDto) {
    final collection = firestore
        .collection('all_class/VTA_class/2022/first_semester/all_class')
        .where('classInfo.baseClass', isEqualTo: classDto.classInfo!.name)
        .snapshots();
    return collection.map<List<ClassDto>>(
      (QuerySnapshot snapshot) => snapshot.docs
          .map(
            (DocumentSnapshot doc) =>
                ClassDto.fromJson(doc.data() as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  @override
  void deleteClass(ClassDto classDto) {
    firestore.doc('my_class/${classDto.id}').delete();
  }

  @override
  void deleteAllClass(List<ClassDto> classList) {
    for (var classDto in classList) {
      firestore.doc('my_class/${classDto.id}').delete();
    }
  }
}
