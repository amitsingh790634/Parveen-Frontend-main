// import 'package:parveen_frontend/controller/register_controller.dart';
// import 'package:parveen_frontend/core/package.dart';
// import 'package:parveen_frontend/view/serviceUnavailable_view/serviceUnavailable.dart';

// import '../../core/color.dart';
// import '../../core/text_style.dart';

// class RegisterScreen extends GetView {
//   RegisterScreen({Key? key}) : super(key: key);

//   RegisterController _registerController = Get.put(RegisterController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: clrWhite,
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         elevation: 0,
//         // backgroundColor: Color.fromARGB(255, 255, 255, 255),
//         backgroundColor: Color(0x00000000),
//         leading: Icon(
//           Icons.arrow_back,
//           color: clrBlack,
//         ).onTap(() => Get.back()),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             5.h.heightBox,
//             Container(
//               height: 150,
//               width: 150,
//               decoration: const BoxDecoration(
//                   shape: BoxShape.circle,
//                   // borderRadius: BorderRadius.all(
//                   //   Radius.circular(100),
//                   // ),
//                   color: clrBlack,
//                   image: DecorationImage(
//                       image: AssetImage('assets/img/logo.png'),
//                       fit: BoxFit.contain)),
//             ).centered(),
//             6.h.heightBox,
//             Container(
//               height: 50,
//               width: 94.w,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                   border: Border.all(color: clrBgGrey)),
//               child: TextField(
//                 controller: _registerController.name,
//                 decoration: InputDecoration(
//                     focusedBorder: InputBorder.none,
//                     enabledBorder: InputBorder.none,
//                     hintText: 'Full Name',
//                     hintStyle: txtGrey_Light_Normal,
//                     contentPadding: EdgeInsets.all(16)),
//               ),
//             ),
//             2.h.heightBox,
//             Container(
//               height: 50,
//               width: 94.w,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                   border: Border.all(color: clrBgGrey)),
//               child: TextField(
//                 controller: _registerController.phone,
//                 decoration: InputDecoration(
//                     focusedBorder: InputBorder.none,
//                     enabledBorder: InputBorder.none,
//                     hintText: 'Phone Number',
//                     hintStyle: txtGrey_Light_Normal,
//                     contentPadding: EdgeInsets.all(16)),
//               ),
//             ),
//             2.h.heightBox,
//             Container(
//               height: 50,
//               width: 94.w,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                   border: Border.all(color: clrBgGrey)),
//               child: TextField(
//                 controller: _registerController.email,
//                 decoration: InputDecoration(
//                     focusedBorder: InputBorder.none,
//                     enabledBorder: InputBorder.none,
//                     hintText: 'Email id',
//                     hintStyle: txtGrey_Light_Normal,
//                     contentPadding: EdgeInsets.all(16)),
//               ),
//             ),
//             2.h.heightBox,
//             Container(
//               height: 50,
//               width: 94.w,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                   border: Border.all(color: clrBgGrey)),
//               child: TextField(
//                 enabled: false,
//                 controller: _registerController.gender,
//                 decoration: InputDecoration(
//                     suffixIcon: Transform.rotate(
//                         angle: 4.7,
//                         child: Icon(
//                           Icons.arrow_back_ios_new,
//                           size: 15,
//                           color: clrGrey,
//                         )),
//                     focusedBorder: InputBorder.none,
//                     enabledBorder: InputBorder.none,
//                     disabledBorder: InputBorder.none,
//                     hintText: 'Select gender',
//                     hintStyle: txtGrey_Light_Normal,
//                     contentPadding: EdgeInsets.all(16)),
//               ),
//             ),
//             2.h.heightBox,
//             Container(
//               height: 50,
//               width: 94.w,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                   border: Border.all(color: clrBgGrey)),
//               child: TextField(
//                 enabled: false,
//                 controller: _registerController.gender,
//                 decoration: InputDecoration(
//                     suffixIcon: Image.asset('assets/icon/eye_off.png'),
//                     focusedBorder: InputBorder.none,
//                     enabledBorder: InputBorder.none,
//                     disabledBorder: InputBorder.none,
//                     hintText: 'Enter password',
//                     hintStyle: txtGrey_Light_Normal,
//                     contentPadding: EdgeInsets.all(16)),
//               ),
//             ),
//             2.h.heightBox,
//             Container(
//               height: 50,
//               width: 94.w,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                   border: Border.all(color: clrBgGrey)),
//               child: TextField(
//                 enabled: false,
//                 controller: _registerController.gender,
//                 decoration: InputDecoration(
//                     suffixIcon: Image.asset('assets/icon/eye_off.png'),
//                     focusedBorder: InputBorder.none,
//                     enabledBorder: InputBorder.none,
//                     disabledBorder: InputBorder.none,
//                     hintText: 'Confirm password',
//                     hintStyle: txtGrey_Light_Normal,
//                     contentPadding: EdgeInsets.all(16)),
//               ),
//             ),
//             4.h.heightBox,
//             SizedBox(
//               width: 94.w,
//               height: 50,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Get.to(() => ServiceUnavailableScreen());
//                 },
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(clrPrimary),
//                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                         RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(10)))),
//                 child: Text(
//                   'Create Account',
//                 ),
//               ),
//             ),
//             2.h.heightBox,
//             Text(
//               'Or',
//               style: txt_Medium_Normal,
//             ).centered(),
//             1.h.heightBox,
//             ElevatedButton.icon(
//               icon: Image.asset(
//                 'assets/icon/google.png',
//                 scale: 1,
//               ),
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(clrWhite),
//                 foregroundColor: MaterialStateProperty.all(clrBlack),
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//                 minimumSize: MaterialStateProperty.all(
//                   Size(100.w, 50),
//                 ),
//               ),
//               onPressed: () {
//                 // Get.to(() => OtpScreen());
//               },
//               label: const Text('Sign up with Google'),
//             ).w(90.w),
//             2.h.heightBox,
//             ElevatedButton.icon(
//               icon: Image.asset(
//                 'assets/icon/fb.png',

//                 // scale: 1,
//               ).scale(scaleValue: 1),
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all(Color(0xff1778F2)),
//                 foregroundColor: MaterialStateProperty.all(clrWhite),
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//                 minimumSize: MaterialStateProperty.all(
//                   Size(100.w, 50),
//                 ),
//               ),
//               onPressed: () {
//                 // Get.to(() => OtpScreen());
//               },
//               label: const Text('Sign up with Facebook'),
//             ).w(90.w),
//             1.h.heightBox,
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'Already have an account?',
//                   style: txt_Medium_Normal,
//                 ),
//                 TextButton(
//                   onPressed: () {},
//                   child: Text('Sign in'),
//                   style: ButtonStyle(
//                       foregroundColor: MaterialStateProperty.all(clrPrimary)),
//                 ),
//               ],
//             ),
//             2.h.heightBox,
//             Flex(direction: Axis.vertical, children: [
//               RichText(
//                 textAlign: TextAlign.center,
//                 text: TextSpan(
//                     text: 'By signing up you have agreed to our',
//                     style: TextStyle(
//                       color: clrBlack,
//                     ),
//                     children: [
//                       TextSpan(
//                           text: ' TERMS OF USE',
//                           style: TextStyle(color: clrPrimary)),
//                       TextSpan(text: ' and', style: TextStyle(color: clrBlack)),
//                       TextSpan(
//                           text: ' PRIVACY POLICY',
//                           style: TextStyle(color: clrPrimary))
//                     ]),
//               ).pSymmetric(h: 60),
//             ])
//           ],
//         ).pOnly(bottom: 12),
//       ),
//     );
//   }
// }

import 'dart:convert';

import 'package:parveen_frontend/controller/register_controller.dart';
import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/view/login_view/login.dart';
import 'package:parveen_frontend/view/otp_view/otp.dart';
import 'package:parveen_frontend/view/serviceUnavailable_view/serviceUnavailable.dart';
import 'package:http/http.dart' as http;

import '../../core/color.dart';
import '../../core/text_style.dart';

class RegisterScreen extends GetView {
  RegisterScreen({Key? key}) : super(key: key);
  RegisterController _registerController = Get.put(RegisterController());

  // var jsonResponse;
  // var data1;

  // Register(
  //   String name,
  //   String phone,
  //   String email,
  //   String gender,
  //   String datebirth,
  //   String password,
  // ) async {
  //   // controller.isLoading.value = true;
  //   String url = "https://polar-crag-62748.herokuapp.com/api/users/register";
  //   Map body = {
  //     "fullName": name,
  //     "phone": phone,
  //     "email": email,
  //     'gender': gender,
  //     'birthDate': datebirth,
  //     'password': password,
  //   };
  //   print(body);

  //   var res = await http.Client().post(Uri.parse(url), body: body);

  //   var data1 = jsonDecode(res.body);
  //   // controller.isLoading.value = false;
  //   print(data1);
  //   print(res.statusCode);

  //   if (res.statusCode == 201) {
  //     // _registerController.writeotp = data['otp'];
  //     // print('read phoen is $data1');
  //     // print(data['token']);
  //     // SharedToken().token_save(data['token']);

  //     // controller.isLoading.value = false;
  //     print("Response status: ${res.statusCode}");

  //     Get.to(ServiceUnavailableScreen());
  //   }
  //   if (res.statusCode == 400) {
  //     var data = jsonDecode(res.body);
  //     // setState(() {
  //     //   isLoading = false;
  //     // });
  //     data1 = data['message'];
  //     print(data1);
  //     Get.snackbar("Error", data1.toString(),
  //         duration: const Duration(seconds: 3));
  //   }
  //   if (res.statusCode == 500) {
  //     var data = jsonDecode(res.body);
  //     // setState(() {
  //     //   isLoading = false;
  //     // });
  //     data1 = data['message'];
  //     print(data1);
  //     Get.snackbar("Error", data1.toString(),
  //         duration: const Duration(seconds: 3));
  //   }
  //   // else {
  //   //   Get.snackbar("Error", 'Please give correct credentials');
  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrWhite,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        // backgroundColor: Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Color(0x00000000),
        leading: Icon(
          Icons.arrow_back,
          color: clrBlack,
        ).onTap(() => Get.back()),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            6.h.heightBox,
            Container(
              height: 50,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: clrBgGrey)),
              child: TextField(
                controller: _registerController.name,
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Full Name',
                    hintStyle: txtGrey_Light_Normal,
                    contentPadding: EdgeInsets.all(16)),
              ),
            ),
            2.h.heightBox,
            Container(
              height: 50,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: clrBgGrey)),
              child: TextField(
                controller: _registerController.phone,
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Phone Number',
                    hintStyle: txtGrey_Light_Normal,
                    contentPadding: EdgeInsets.all(16)),
              ),
            ),
            2.h.heightBox,
            Container(
              height: 50,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: clrBgGrey)),
              child: TextField(
                controller: _registerController.email,
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Email id',
                    hintStyle: txtGrey_Light_Normal,
                    contentPadding: EdgeInsets.all(16)),
              ),
            ),
            2.h.heightBox,
            Container(
              height: 50,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: clrBgGrey)),
              child: TextField(
                // enabled: false,
                controller: _registerController.gender,
                decoration: InputDecoration(
                    suffixIcon: Transform.rotate(
                        angle: 4.7,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 15,
                          color: clrGrey,
                        )),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Select gender',
                    hintStyle: txtGrey_Light_Normal,
                    contentPadding: EdgeInsets.all(16)),
              ),
            ),
            2.h.heightBox,
            Container(
              height: 50,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: clrBgGrey)),
              child: TextField(
                // enabled: false,
                controller: _registerController.datebirth,
                decoration: InputDecoration(
                    suffixIcon: Image.asset('assets/icon/calender.png'),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Date of birth',
                    hintStyle: txtGrey_Light_Normal,
                    contentPadding: EdgeInsets.all(16)),
              ),
            ),
            2.h.heightBox,
            Container(
              height: 50,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: clrBgGrey)),
              child: TextField(
                // enabled: false,
                controller: _registerController.password,
                decoration: InputDecoration(
                    suffixIcon: Image.asset('assets/icon/eye_off.png'),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Enter password',
                    hintStyle: txtGrey_Light_Normal,
                    contentPadding: EdgeInsets.all(16)),
              ),
            ),
            2.h.heightBox,
            Container(
              height: 50,
              width: 94.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(color: clrBgGrey)),
              child: TextField(
                // enabled: false,
                decoration: InputDecoration(
                    suffixIcon: Image.asset('assets/icon/eye_off.png'),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: 'Confirm password',
                    hintStyle: txtGrey_Light_Normal,
                    contentPadding: EdgeInsets.all(16)),
              ),
            ),
            4.h.heightBox,
            SizedBox(
              width: 94.w,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => OtpScreen());
                  // _registerController.callRegister();
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(clrPrimary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                child: const Text(
                  'Create Account',
                ),
              ),
            ),
            2.h.heightBox,
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
              onPressed: () {
                // Get.to(() => OtpScreen());
              },
              label: const Text('Sign up with Google'),
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
              label: const Text('Sign up with Facebook'),
            ).w(90.w),
            1.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: txt_Medium_Normal,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(() => LoginScreen());
                  },
                  child: Text('Sign in'),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(clrPrimary)),
                ),
              ],
            ),
            2.h.heightBox,
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
                      TextSpan(text: ' and', style: TextStyle(color: clrBlack)),
                      TextSpan(
                          text: ' PRIVACY POLICY',
                          style: TextStyle(color: clrPrimary))
                    ]),
              ).pSymmetric(h: 60),
            ])
          ],
        ).pOnly(bottom: 12),
      ),
    );
  }
}
