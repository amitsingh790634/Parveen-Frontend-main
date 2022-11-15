// import 'dart:developer';

// import 'package:dio/dio.dart';
// import 'package:get_storage/get_storage.dart';

// class Client {
//   static String token = "";
//   Dio init() {
//     Dio _dio = Dio();
//     _dio.interceptors.add(ApiInterceptor());
//     _dio.options.baseUrl = 'https://polar-crag-62748.herokuapp.com/';
//     return _dio;
//   }
// }

// class ApiInterceptor extends Interceptor {
//   @override
//   void onError(DioError err, ErrorInterceptorHandler handler) {
//     super.onError(err, handler);
//   }

//   @override
//   void onRequest(
//       RequestOptions options, RequestInterceptorHandler handler) async {
//     GetStorage box = GetStorage();
//     var token = await box.read("token");
//     if (token != null) {
//       options.headers["Authorization"] = "Bearer " + token;
//       log("on request ${"Bearer " + token}");
//     }
//     super.onRequest(options, handler);
//   }

//   @override
//   void onResponse(Response response, ResponseInterceptorHandler handler) {
//     super.onResponse(response, handler);
//     // log("response ${response.data}");
//   }
// }

import 'dart:math';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Client {
  // static String token = "";
  Dio init() {
    Dio _dio = Dio();
    _dio.interceptors.add(ApiInterceptors());
    _dio.options.baseUrl = 'https://polar-crag-62748.herokuapp.com/';
    return _dio;
  }
}

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    super.onRequest(options, handler);

    final preference = await SharedPreferences.getInstance();
    final key = 'token';
    var token = preference.getString(key);

    if (token != null) {
      options.headers["Authorization"] = "Bearer $token";
      print(token);
    }
  }
}
