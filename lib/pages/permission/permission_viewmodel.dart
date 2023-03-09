import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:odak/core/cache_manager.dart';
import 'package:odak/permission/model/permission_model.dart';
import 'package:odak/permission/permission.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class PermissionViewModel extends State<Permission> with CacheManager {
  final _baseUrl = "http://192.168.1.211";
  bool isFinish = false;

  List<PermissionModel> _permissions = [];
  List<PermissionModel> get permissions => _permissions;

  @override
  void initState() {
    super.initState();
    final dio = Dio(BaseOptions(baseUrl: _baseUrl));
    dio.interceptors.add(PrettyDioLogger());
    fetchPermissions();
  }

  Future<void> fetchPermissions() async {
    var kartId = await getId();

    try {
      setState(() {
        isFinish = false;
      });

      final response = await Dio().get('http://192.168.1.211/odak/izinler.php',
          queryParameters: {"kart_id": kartId});
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        _permissions =
            data.map((json) => PermissionModel.fromJson(json)).toList();
        setState(() {
          isFinish = true;
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
