import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vantan_connect/model/user_profile_state/user_profile_state.dart';
import 'package:vantan_connect/model/user_state/user_state.dart';

class EditProfileViewModel extends StateNotifier<UserProfileState> {
  EditProfileViewModel() : super(const UserProfileState());

  Future<void> setImageFromGallery() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      state = state.copyWith(userImageFile: File(pickedFile.path));
    }
  }

  ImageProvider switchImageOrFile(UserState userState) {
    if (state.userImageFile == null) {
      state = state.copyWith(userImageFile: File(userState.userImagePath));
    }
    return NetworkImage(state.userImageFile!.path);
  }
}

final editProfileProvider =
    StateNotifierProvider.autoDispose((ref) => EditProfileViewModel());
