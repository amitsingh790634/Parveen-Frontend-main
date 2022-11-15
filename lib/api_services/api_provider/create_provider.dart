import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;

import '../../view/serviceUnavailable_view/serviceUnavailable.dart';

class RegisterProvider {
  Dio client;
  RegisterProvider({required this.client});

  Register(
    String name,
    String phone,
    String email,
    String gender,
    String datebirth,
    String password,
  ) async {
    Map body = {
      "fullName": name,
      "phone": phone,
      "email": email,
      'gender': gender,
      'birthDate': datebirth,
      'password': password,
    };
    try {
      print(body);

      Response response = await client.post('/api/users/register', data: body);

      if (response.statusCode == 201) {
        print('hellooooooo');
        print(response.data);

        g.Get.to(() => ServiceUnavailableScreen());

        //print(response.data);

      } else {
        // return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
