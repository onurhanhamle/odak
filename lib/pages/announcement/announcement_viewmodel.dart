import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:odak/announcement/announcement.dart';
import 'package:odak/announcement/model/announcement_model.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class AnnouncementViewModel extends State<Announcement> {
  final _baseUrl = "http://192.168.1.211";
  bool isFinish = false;

  List<AnnouncementModel> _announcements = [];
  List<AnnouncementModel> get announcements => _announcements;

  @override
  void initState() {
    super.initState();
    final dio = Dio(BaseOptions(baseUrl: _baseUrl));
    dio.interceptors.add(PrettyDioLogger());
    fetchAnnouncements();
  }

  Future<void> fetchAnnouncements() async {
    try {
      setState(() {
        isFinish = false;
      });

      final response = await Dio().get('http://192.168.1.211/odak/duyuru.php');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        _announcements =
            data.map((json) => AnnouncementModel.fromJson(json)).toList();
        setState(() {
          isFinish = true;
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
