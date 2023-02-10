import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odak/core/cache_manager.dart';
import 'package:odak/home/home_view.dart';
import 'package:odak/home/model/user_model.dart';
import 'package:odak/login/login_view.dart';
import 'package:odak/login/model/user_request_model.dart';
import 'package:odak/login/service/login_service.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';
import '../core/auth_manager.dart';
import '../login/login.dart';
import 'home.dart';

abstract class HomeViewModel extends State<Home> with CacheManager {
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
}
