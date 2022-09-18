import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hashtagable/widgets/hashtag_text_field.dart';
import 'package:vantan_connect/view_model/user_state/edit_profile_view_model.dart';
import '../model/user_state/user_state.dart';
import '../view_model/user_state/user_view_model.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage(this.userState, {super.key});
  final UserState userState;
  @override
  Widget build(BuildContext context) {
    final nameController = TextEditingController(text: userState.name);
    final profileTextController =
        TextEditingController(text: userState.profileText);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer(
            builder: (context, ref, child) {
              ref.watch(editProfileProvider);
              final userProfile = ref.watch(editProfileProvider.notifier);
              return Column(
                children: [
                  Consumer(
                    builder: (context, ref, child) {
                      return GestureDetector(
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              userProfile.state.userImageFile == null
                                  ? NetworkImage(userState.userImagePath)
                                      as ImageProvider
                                  : FileImage(userProfile.state.userImageFile!),
                        ),
                        onTap: () async {
                          await userProfile.setImageFromGallery();
                        },
                      );
                    },
                  ),
                  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      hintText: '名前',
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    controller: profileTextController,
                    decoration: const InputDecoration(
                      hintText: 'ひとこと',
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Consumer(
                    builder: (context, ref, child) {
                      return ElevatedButton(
                        onPressed: () async {
                          EasyLoading.show(status: 'loading...');
                          final String imageFromStorage;
                          if (userProfile.state.userImageFile != null) {
                            imageFromStorage = await ref
                                .read(userViewModel.notifier)
                                .sendUserImageToStorage(
                                  userProfile.state.userImageFile != null
                                      ? userProfile.state.userImageFile!
                                      : File(userState.userImagePath),
                                );
                          } else {
                            imageFromStorage = userState.userImagePath;
                          }
                          await ref.read(userViewModel.notifier).updateUserInfo(
                                nameController.text,
                                profileTextController.text,
                                imageFromStorage,
                              );
                          EasyLoading.showSuccess('更新しました');
                          Navigator.of(context).pop();
                        },
                        child: const Text('更新する'),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
