import 'package:bookia/feature/auth/data/models/register_request_model.dart';
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
  }

  static register(RegisterRequestModel registerModel) async {
    try {
      //دي الي بتهندل الايرور

      final response = await dio.post("/register", data: registerModel.toMap());
      if (response.statusCode == 201) {
        return response;
      }else{
        return response.data["message"];
      }
    } catch (e) {
      return "Error try agin$e";
    }
  }
}
