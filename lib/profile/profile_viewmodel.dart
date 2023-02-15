import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odak/core/cache_manager.dart';
import 'package:odak/profile/profile_resources.dart';
import 'package:provider/provider.dart';
import '../core/auth_manager.dart';
import '../login/login.dart';
import 'profile.dart';

abstract class ProfileViewModel extends State<Profile>
    with CacheManager, ProfileResources {
  AuthenticationManager get readAuthManager =>
      context.read<AuthenticationManager>();

  @override
  void initState() {
    super.initState();
  }

  void logoutUser() async {
    await readAuthManager.removeUserData();
    navigateToLogin();
  }

  void navigateToLogin() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Login()));
  }

  Future<void> showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(alertDialogTitle),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(alertDialogBody),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(alertDialogCancel),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(alertDialogApprove),
              onPressed: () {
                logoutUser();

                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
