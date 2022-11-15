// import 'package:parveen_frontend/core/package.dart';

// class LoginController extends GetxController {
//   TextEditingController phone = TextEditingController();
// }

// import 'package:parveen_frontend/api_services/api_provider/login_provider.dart';
// import 'package:parveen_frontend/core/package.dart';

// import '../api_services/api_client/api_client.dart';

// class LoginController extends GetxController {
//   GlobalKey<FormState> login = GlobalKey();
//   TextEditingController phone = TextEditingController();
//   RxBool isLoading = false.obs;
//   var token;

//   String? phonevalidate(value) {
//     if (value == '') {
//       return 'enter your Mobile';
//     }
//     return null;
//   }

//   // String? passwordvalidation(value) {
//   //   if (value == '') {
//   //     return 'enter your password';
//   //   }
//   //   return null;
//   // }

//   checkforgetPassword() {
//     final isvalidate = login.currentState!.validate();
//     if (!isvalidate) {
//       return;
//     } else {
//       CallforgetPasswordProviderApi();
//     }
//     login.currentState!.save();
//   }

//   CallforgetPasswordProviderApi() {
//     Client _client = Client();
//     LoginProvider _LoginProvider = LoginProvider(client: _client.init());
//     _LoginProvider.LoginProviderApi(phone: phone.text);
//   }
// }

import 'package:parveen_frontend/core/package.dart';

import '../api_services/api_client/api_client.dart';
import '../api_services/api_provider/create_provider.dart';
import '../api_services/api_provider/login_provider.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> register = GlobalKey();
  TextEditingController phone = TextEditingController();

  var writeotp = '';

  callLogin() {
    Client client = Client();

    LoginProvider(client: client.init()).Login(phone.text);
  }

  @override
  void onInit() {
    // super.onInit();
    // name;
    // email;
    // phone;
    // gender;
    // datebirth;
    // password;
  }

  RxBool isLoading = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // isLoading = false as RxBool;
  }
}
