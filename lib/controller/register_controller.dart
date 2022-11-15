// import 'package:parveen_frontend/core/package.dart';

// class RegisterController extends GetxController {
//   TextEditingController name = TextEditingController();
//   TextEditingController phone = TextEditingController();
//   TextEditingController email = TextEditingController();
//   final gender = TextEditingController();

// }

import 'package:parveen_frontend/core/package.dart';

import '../api_services/api_client/api_client.dart';
import '../api_services/api_provider/create_provider.dart';

class RegisterController extends GetxController {
  GlobalKey<FormState> register = GlobalKey();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController datebirth = TextEditingController();
  TextEditingController password = TextEditingController();

  var writeotp = '';

  callRegister() {
    Client client = Client();

    RegisterProvider(client: client.init()).Register(name.text, phone.text,
        email.text, gender.text, datebirth.text, password.text);
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
