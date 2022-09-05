import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    final userData = await fetchUserInfo(uid);
    userData.listen((userState) {
      state = state.copyWith(
          name: userState.name, attendedDay: userState.attendedDay);
    });
  }
}

// final logoutProvider = StateProvider((ref) => null);

final userViewModel =
    StateNotifierProvider.autoDispose<UserViewModel, UserState>(
  (ref) {
    // ref.watch(logoutProvider);
    return UserViewModel();
  },
);
