import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:odak/core/auth_manager.dart';
import 'package:odak/login/login_view.dart';
import 'package:odak/splash/splash_view.dart';
import 'package:provider/provider.dart';

import 'login/login.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider<AuthenticationManager>(
          create: (context) => AuthenticationManager(context: context),

      )
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
      builder: EasyLoading.init(),
    );
  }
}
