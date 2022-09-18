import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampConverter implements JsonConverter<Timestamp, Timestamp> {
  const TimestampConverter();

  @override
  Timestamp fromJson(dynamic timestamp) {
    return timestamp as Timestamp;
  }

  @override
  Timestamp toJson(Timestamp date) => date;
}
