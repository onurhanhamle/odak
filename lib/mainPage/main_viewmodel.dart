import 'package:flutter/material.dart';
import 'package:odak/mainPage/mainPage.dart';

import '../constant/color_constants.dart';

abstract class MainViewModel extends State<MainPage> {
  @override
  List<Color> get availableColors => const <Color>[
        ColorConstants.appBlue,
        ColorConstants.appBlue,
        ColorConstants.appBlue,
        ColorConstants.appBlue,
        ColorConstants.appBlue,
        ColorConstants.appBlue,
      ];

  final Duration animDuration = const Duration(milliseconds: 250);

  bool isPlaying = false;
  int touchedIndex = -1;

}
