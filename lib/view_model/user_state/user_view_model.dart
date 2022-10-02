import 'dart:async';
import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';
import 'package:vantan_connect/ripository/user/user_repository.dart';
import 'package:vantan_connect/ripository/user/user_repository_impl.dart';

class UserViewModel extends StateNotifier<UserState> {
  UserViewModel(this.userRepository) : super(const UserState());

  final UserRepository userRepository;

  Future<void> fetchUser(String uid) async {
    final userData = await userRepository.fetchUserInfo(uid);
    userData.listen((userState) {
      state = state.copyWith(
        id: userState.id,
        name: userState.name,
        userImagePath: userState.userImagePath,
        attendedDay: userState.attendedDay,
        profileText: userState.profileText,
      );
    });
  }

  //　TODO　これここに入れるもんなの？
  // TODO 多分service層に入れる
  Future<void> setImageFromGallery(File? image) async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      image = File(pickedFile.path);
    }
  }

  Future<String> sendUserImageToStorage(File imageFile) async {
    final imageFromStorage =
        await userRepository.sendUserImageToStorage(imageFile);
    return imageFromStorage;
  }

  Future<void> sendAttendance(UserState userState) async {
    await userRepository.sendAttendance(userState);
  }

  Future<void> sendAbsence(UserState userState) async {
    await userRepository.sendAbsence(userState);
  }

  Future<void> sendLateness(UserState userState) async {
    await userRepository.sendLateness(userState);
  }

  Future<void> sendAttendanceStatus(
      UserState userState, String status, String? reason) async {
    await userRepository.sendAttendanceStatus(userState, status, reason);
  }

  Future<void> updateUserInfo(
      String name, String profileText, String userImagePath) async {
    state = state.copyWith(
      name: name,
      profileText: profileText,
      userImagePath: userImagePath,
    );
    print('更新しました');
    await userRepository.updateUserInfo(state);
  }
}

final userViewModel = StateNotifierProvider<UserViewModel, UserState>(
    (ref) => UserViewModel(UserRepositoryImpl()));
