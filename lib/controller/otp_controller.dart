// import 'package:parveen_frontend/core/package.dart';

// class OtpController extends GetxController {
//   TextEditingController otp = TextEditingController();
// }

// import 'package:parveen_frontend/core/package.dart';

// class OtpController extends GetxController {
//   TextEditingController otp = TextEditingController();
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parveen_frontend/controller/login_controller.dart';

import '../api_services/api_client/api_client.dart';
import '../api_services/api_provider/otp_verify_provider.dart';

class OtpController extends GetxController {
  LoginController _loginController = Get.put(LoginController());
  RxString elapsedTime = '02:00'.obs;
  // int _start = 120;
  String result = '';
  GlobalKey<FormState> otpforgetKey = GlobalKey<FormState>();
  TextEditingController otp = TextEditingController();

  String? otpValidator(value) {
    if (value.length == 0) {
      return 'Plese enter otp';
    } else {
      return null;
    }
  }

  RxBool isLoading = false.obs;
  var token;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  callOtp() {
    Client client = Client();

    OtpProvider(client: client.init())
        .VerifyOtp(otp.text, _loginController.phone.text);
  }
}
