import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;
import 'package:parveen_frontend/view/otp_view/otp.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../sharedpreferences/shared_preferences.dart';
import '../../view/serviceUnavailable_view/serviceUnavailable.dart';

class LoginProvider {
  Dio client;
  LoginProvider({required this.client});
  var jsonResponse;
  var logToken;
  var user;
  var name;

  Login(
    String phone,
  ) async {
    Map body = {
      "phone": phone,
    };
    try {
      print(body);

      Response response =
          await client.post('/api/users/login/sendOtp', data: body);

      if (response.statusCode == 200) {
        print('hellooooooo');
        print(response.data);

        g.Get.to(() => OtpScreen());
      }
      // else {
      //   // return Future.error(response.data["error"]);
      // }
    } on DioError catch (e) {
      print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
