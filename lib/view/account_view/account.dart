import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parveen_frontend/core/color.dart';
import 'package:velocity_x/velocity_x.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            color: clrPrimary,
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                20.heightBox,
                const Icon(Icons.arrow_back_ios_new, color: Vx.white)
                    .onInkTap(() {
                  Get.back();
                }),
                10.heightBox,
                Row(
                  children: [
                    "My Account".text.size(32).white.bold.make(),
                    const Spacer(),
                    ClipOval(
                      child: Image.asset(
                        'assets/img/profile.jpg',
                        width: 60,
                        height: 60,
                      ),
                    )
                  ],
                ),
                10.heightBox
              ],
            ),
          ),
          20.heightBox,
          buildItem("Level", "Gold Member"),
          buildItem("Wallet", "\$36"),
          buildItem("Name", "Larry Dvais"),
          buildItem("Email", "freelab88@gmail.com"),
          buildItem("Gender", "Male"),
          buildItem("Birthday", "April 16, 1988"),
          buildItem("Phone number", "+84 905 07 00 17"),
        ],
      )),
    ));
  }

  buildItem(String title, String value) {
    return Column(
      children: [
        ListTile(
          title: title.text.make(),
          trailing: "$value >".text.gray400.make(),
        ),
        10.heightBox,
        const VxDivider()
      ],
    );
  }
}
