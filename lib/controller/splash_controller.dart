import 'dart:async';

import 'package:flutter/material.dart';
import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/view/login_view/login.dart';

class SplashController extends GetxController {

   @override
  void onInit() {
  
    super.onInit();
    Timer(const Duration(seconds: 6),
            ()=> Get.offAll(LoginScreen())
    );
    // getData();
  }


  
 

}