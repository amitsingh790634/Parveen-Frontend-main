import 'package:parveen_frontend/controller/splash_controller.dart';
import 'package:parveen_frontend/core/package.dart';

class SplashScreen extends GetView {
  SplashScreen({Key? key}) : super(key: key);

  final SplashController _splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Image.asset(
        'assets/img/logo.png',
      )),
    );
  }
}
