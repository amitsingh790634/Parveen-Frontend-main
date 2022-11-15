import 'package:parveen_frontend/controller/login_controller.dart';
import 'package:parveen_frontend/core/color.dart';
import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/core/text_style.dart';
import 'package:parveen_frontend/view/otp_view/otp.dart';
import 'package:parveen_frontend/view/register_view/register.dart';

class LoginScreen extends GetView {
  LoginScreen({Key? key}) : super(key: key);

  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              5.h.heightBox,
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.all(
                    //   Radius.circular(100),
                    // ),
                    color: clrBlack,
                    image: DecorationImage(
                        image: AssetImage('assets/img/logo.png'),
                        fit: BoxFit.contain)),
              ).centered(),
              5.h.heightBox,
              Text(
                'Signin with phone number',
                style: txt_Medium_Normal,
              ),
              1.5.h.heightBox,
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    border: Border.all(color: clrBgGrey)),
                child: TextField(
                  controller: _loginController.phone,
                  decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Phone Number',
                      hintStyle: txtGrey_Light_Normal,
                      contentPadding: EdgeInsets.all(16)),
                ),
              ),
              2.h.heightBox,
              SizedBox(
                width: 100.w,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // _loginController.callLogin();
                    Get.to(() => OtpScreen());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(clrPrimary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  child: Text(
                    'Continue',
                  ),
                ),
              ),
              1.5.h.heightBox,
              Text(
                'We\'ll send OTP for verification',
                style: txt_Medium_Normal,
              ).centered(),
              4.h.heightBox,
              Text(
                'Or',
                style: txt_Medium_Normal,
              ).centered(),
              1.h.heightBox,
              ElevatedButton.icon(
                icon: Image.asset(
                  'assets/icon/google.png',
                  scale: 1,
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(clrWhite),
                  foregroundColor: MaterialStateProperty.all(clrBlack),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size(100.w, 50),
                  ),
                ),
                onPressed: () {},
                label: const Text('Sign in with Google'),
              ).w(90.w),
              2.h.heightBox,
              ElevatedButton.icon(
                icon: Image.asset(
                  'assets/icon/fb.png',

                  // scale: 1,
                ).scale(scaleValue: 1),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xff1778F2)),
                  foregroundColor: MaterialStateProperty.all(clrWhite),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size(100.w, 50),
                  ),
                ),
                onPressed: () {},
                label: const Text('Sign in with Facebook'),
              ).w(90.w),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? ',
                    style: txt_Medium_Normal,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => RegisterScreen());
                    },
                    child: Text('Sign up'),
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(clrPrimary)),
                  )
                ],
              ),
              Flex(direction: Axis.vertical, children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'By signing up you have agreed to our',
                      style: TextStyle(
                        color: clrBlack,
                      ),
                      children: [
                        TextSpan(
                            text: ' TERMS OF USE',
                            style: TextStyle(color: clrPrimary)),
                        TextSpan(
                            text: ' and', style: TextStyle(color: clrBlack)),
                        TextSpan(
                            text: ' PRIVACY POLICY',
                            style: TextStyle(color: clrPrimary))
                      ]),
                ).pSymmetric(h: 50),
              ])
            ],
          ).pOnly(left: 12, right: 12, bottom: 12),
        ),
      ),
    );
  }
}
