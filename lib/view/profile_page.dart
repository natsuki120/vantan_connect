import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vantan_connect/const/space_box.dart';
import 'package:vantan_connect/view/edit_profile_page.dart';

import '../view_model/user_view_model.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key, required this.user});

  final User user;

  @override
  ConsumerState<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  void initState() {
    super.initState();
    Future(() async {
      await ref.watch(userViewModel.notifier).fetchUser(widget.user.uid);
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(userViewModel);
    final user = ref.watch(userViewModel.notifier);
    print('写真：　${ref.watch(userViewModel.notifier).state.userImagePath}');
    return Scaffold(
      body: Column(
        children: [
          const SpaceBox(height: 100),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  user.state.userImagePath != ''
                      ? CircleAvatar(
                          radius: 60,
                          foregroundImage:
                              NetworkImage(user.state.userImagePath))
                      : Container(),
                  Column(
                    children: [
                      Text(user.state.name),
                      const Text('バンタンテックフォードアカデミー'),
                      const SpaceBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<EditProfilePage>(
                              builder: (_) => EditProfilePage(user.state),
                            ),
                          );
                        },
                        child: const Text('押してみ'),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Text(
                  user.state.profileText,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, int index) {
                return Row(
                  children: [
                    const SpaceBox(
                      width: 10,
                    ),
                    Container(
                      height: 240,
                      width: 200,
                      color: Colors.blue,
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
