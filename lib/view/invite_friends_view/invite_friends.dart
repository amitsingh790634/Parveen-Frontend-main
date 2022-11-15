import 'package:parveen_frontend/core/color.dart';
import 'package:parveen_frontend/core/package.dart';

class InviteFriendsScreen extends StatelessWidget {
  const InviteFriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrPrimary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: clrPrimary,
        leading: const Icon(Icons.arrow_back_ios, color: Vx.white).onInkTap(() {
          Get.back();
        }),
        title: "Invite Friends".text.white.make(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/img/Artwork.png"),
            20.heightBox,
            "Invite Friends".text.white.size(30).bold.make(),
            "Get 3 Coupons each!".text.white.size(30).bold.make(),
            "When your friend sign up with your referral \ncode,you'll both 3.0 coupons"
                .text
                .center
                .white
                .size(16)
                .make(),
            20.heightBox,
            Column(
              children: [
                "Share your Invite Code".text.make(),
                30.heightBox,
                Row(
                  children: [
                    10.widthBox,
                    "Y045KG".text.size(28).make().expand(),
                    const Icon(Icons.ios_share_outlined),
                    10.widthBox
                  ],
                ),
                20.heightBox,
                const VxDivider(
                  color: Vx.black,
                ).marginOnly(left: 10, right: 10),
                30.heightBox,
                SizedBox(
                  width: 94.w,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(clrPrimary),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                    child: const Text(
                      'Invite Friends',
                    ),
                  ),
                ),
                30.heightBox,
              ],
            )
                .paddingAll(10)
                .box
                .white
                .roundedSM
                .shadowSm
                .margin(const EdgeInsets.all(10))
                .make(),
            20.heightBox
          ],
        ),
      ),
    );
  }
}
