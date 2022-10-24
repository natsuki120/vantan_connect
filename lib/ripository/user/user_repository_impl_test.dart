import 'dart:io';
import 'package:geolocator/geolocator.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';
import 'package:vantan_connect/ripository/user/user_repository.dart';

Map<String, dynamic> testAttendanceStatus = <String, dynamic>{};

class UserRepositoryImplTest implements UserRepository {
  @override
  Future<bool> signIn(String email, String password) async {
    return false;
  }

  @override
  Future<void> registerUserInfo(String userName) async {}

  @override
  Future<Stream<UserState>> fetchUserInfo(String uid) async {
    return Stream.empty();
  }

  @override
  Future fetchAttendanceUser() async {}

  @override
  Future fetchAbsenceUser() async {}

  @override
  Future fetchLatenessUser() async {}

  @override
  Future<void> sendAttendanceState(String uid) async {}

  @override
  Future<String> sendUserImageToStorage(File imageFile) async {
    return '';
  }

  @override
  Future<void> updateUserInfo(UserState userState) async {}

  @override
  Future<void> sendAttendance(UserState userState) async {
    print(await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    ));
    testAttendanceStatus = <String, dynamic>{
      'attendance': '出席',
      'recoredTime': '${DateTime.now().hour}:${DateTime.now().minute}',
      'location': await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      ),
    };
  }

  @override
  Future<void> sendAttendanceStatus(
      UserState userState, String status, String? reason) async {}

  @override
  Future<void> sendAbsence(UserState userState) async {}

  @override
  Future<void> sendLateness(UserState userState) async {}
}
