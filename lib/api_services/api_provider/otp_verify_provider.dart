import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart' as g;
import 'package:shared_preferences/shared_preferences.dart';

import '../../sharedpreferences/shared_preferences.dart';
import '../../view/dashboard_view/dashboard.dart';

class OtpProvider {
  Dio client;
  OtpProvider({required this.client});

  var jsonResponse;
  var logToken;
  var user;
  var name;

  VerifyOtp(String otp, String phone) async {
    try {
      // CommanLoader.loader();
      var data = {
        "otpEnterByUser": otp,
        "phone": phone,
      };
      print(data);
      Response r = await client.post("/api/users/login/verifyOtp", data: data);

      if (r.statusCode == 200) {
        print(r.data);
        print('Otp sucessfully');

        g.Get.to(() => DashboardScreen());

        var data = jsonDecode(jsonResponse);
        logToken = data['token'];
        // user = data['user']['_id'];
        // print(user);
        // name = data['user']['name'];
        print(name);
        SharedToken().save_user(user, name);

        // SharedPreferences prefsToken = await SharedPreferences.getInstance();
        // prefsToken.setString("token", data["token"]);
        SharedToken().token_save(logToken);
        // final box = GetStorage();
        // box.write('phone', data['phone']);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool("isLoggedIn", true);
        print("prefs is " + prefs.toString());

        g.Get.snackbar("Welcome", "Account Created Succesfully",
            icon: Icon(
              Icons.phone,
              color: Colors.green,
            ));
      } else {
        // CommanLoader.showErrorDialog(description: r.data['error']);
      }
    } on DioError catch (e) {
      // CommanLoader.hideLoading();
      // CommanLoader.message(e.response!.data['msg']);
      // log(e.response!.data.toString());
      // CommanLoader.hideLoading();
    }
  }
}
