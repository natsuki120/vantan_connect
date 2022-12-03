import 'package:freezed_annotation/freezed_annotation.dart';
part 'job.freezed.dart';

@freezed
class Job with _$Job {
  const factory Job(String value) = _Job;
}

class JobConverter implements JsonConverter<Job, String> {
  const JobConverter();

  @override
  Job fromJson(String job) {
    return Job(job);
  }

  @override
  String toJson(Job job) {
    return job.value;
  }
}
