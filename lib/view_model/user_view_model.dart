import 'dart:async';
import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';
import 'package:vantan_connect/ripository/user_repository.dart';

class UserViewModel extends StateNotifier<UserState> {
  UserViewModel() : super(const UserState(name: '', attendedDay: 0));

  // Future<void> fetchNumberOfUserAttended() async {
  //   final userData = await fetchNumberOfUserAttend();
  //   state =
  //       state.copyWith(name: userData.name, attendedDay: userData.attendedDay);
  // }

  Future<void> fetchUser(String uid) async {
    final userData = await UserRepository().fetchUserInfo(uid);
    userData.listen((userState) {
      state = state.copyWith(
        name: userState.name,
        userImagePath: userState.userImagePath,
        attendedDay: userState.attendedDay,
        profileText: userState.profileText,
      );
    });
  }

  //　TODO　これここに入れるもんなの？
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
        await UserRepository().sendUserImageToStorage(imageFile);
    return imageFromStorage;
  }

  Future<void> updateUserInfo(
      String name, String profileText, String userImagePath) async {
    state = state.copyWith(
      name: name,
      profileText: profileText,
      userImagePath: userImagePath,
    );
    print('更新しました');
    await UserRepository().updateUserInfo(state);
  }
}

// final logoutProvider = StateProvider((ref) => null);

final userViewModel = StateNotifierProvider<UserViewModel, UserState>(
  (ref) {
    // ref.watch(logoutProvider);
    return UserViewModel();
  },
);
