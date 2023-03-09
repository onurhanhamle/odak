import 'package:dio/dio.dart';

abstract class IAnnouncementService {
  final String path = '/odak/login.php';

  IAnnouncementService(this.dio);

  //Future<UserResponseModel?> fetchLogin(UserRequestModel model);
  final Dio dio;
}

class AnnouncementService extends IAnnouncementService {
  AnnouncementService(Dio dio) : super(dio);
/*
  @override
  Future<UserResponseModel?> fetchLogin(UserRequestModel model) async {
    final response = await dio.post(path, data: model);

    if (response.statusCode == HttpStatus.ok) {
      return UserResponseModel.fromJson(response.data);
    } else {
      return null;
    }
  }*/
}
