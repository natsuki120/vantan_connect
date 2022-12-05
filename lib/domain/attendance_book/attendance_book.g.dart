// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceBook _$$_AttendanceBookFromJson(Map<String, dynamic> json) =>
    _$_AttendanceBook(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      studentInAttendanceBook:
          (json['studentInAttendanceBook'] as List<dynamic>?)
                  ?.map((e) => const StudentInAttendanceBookConverter()
                      .fromJson(e as String))
                  .toList() ??
              const [],
      day: const DateTimeConverter().fromJson(json['day']),
    );

Map<String, dynamic> _$$_AttendanceBookToJson(_$_AttendanceBook instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'studentInAttendanceBook': instance.studentInAttendanceBook
          .map(const StudentInAttendanceBookConverter().toJson)
          .toList(),
      'day': const DateTimeConverter().toJson(instance.day),
    };
