import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:odak/core/cache_manager.dart';

import '../models/UserProfileModel.dart';

class ProfileProvider with ChangeNotifier, CacheManager {
  late String nameSurname;
  late String unvan;
  late String phone;
  late String mail;
  Dio dio = Dio();

  Future<UserProfileModel?> fetchUserData() async {
    var kartId = await getId();

    print("kart id" + kartId.toString());

    final response = await dio.get("http://192.168.1.211/odak/getProfile.php",
        queryParameters: {"kart_id": kartId});
    if (response.statusCode == HttpStatus.ok) {
      print("deneme");
      print(response);

      var user = UserProfileModel.fromJson(response.data);

      nameSurname = user.adSoyad!;
      unvan = user.unvan!;
      phone = user.telefon!;
      mail = user.mail!;
    } else {
      return null;
    }
  }
}
