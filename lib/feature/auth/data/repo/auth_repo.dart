import 'package:dio/dio.dart';

class AuthRepo {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://codingarabic.online/api",
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
    ),
  );

  static login({required String email, required String password}) async {
    try {
      final response = await dio.post(
        "/login",
        data: {"email": email, "password": password},
      );

      if (response.statusCode == 200) {
        return response;
      } else {
        return response.data["message"];
      }
    } catch (e) {
      return "Error try agin$e";
    }
    ;
  }
} 


// Register(){},