import 'dart:io';

import '../../data_model//user/user_state.dart';

abstract class UserRepository {
  Future<bool> signIn(String email, String password);

  Future<void> registerUserInfo(String userName);

  Future<Stream<UserState>> fetchUserInfo(String uid);

  Future<void> sendAttendanceState(String uid);
  Future<String> sendUserImageToStorage(File imageFile);

  Future<void> updateUserInfo(UserState userState);

  Future<void> sendAttendance(UserState userState);

  Future<void> sendAttendanceStatus(
      UserState userState, String status, String? reason);

  Future<void> sendAbsence(UserState userState);

  Future<void> sendLateness(UserState userState);
}
