import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/view/dashboard_view/dashboard.dart';

import '../../core/color.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: clrPrimary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: clrPrimary,
        leading: const Icon(Icons.arrow_back_ios, color: Vx.white),
        title: "Rating".text.white.make(),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              10.heightBox,
              ClipOval(
                child: Image.asset(
                  'assets/img/profile.jpg',
                  width: 90,
                  height: 90,
                ),
              ).box.roundedFull.border(color: Vx.white).make(),
              10.heightBox,
              "Gregory Smith".text.make(),
              5.heightBox,
              "652 - UKW".text.gray500.make(),
              10.heightBox,
              "Wow! A 5 star !\nWanna add tip for Gregory?"
                  .text
                  .center
                  .bold
                  .gray700
                  .size(22)
                  .make(),
              20.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  "\$1"
                      .text
                      .bold
                      .make()
                      .paddingAll(20)
                      .box
                      .gray300
                      .roundedFull
                      .margin(const EdgeInsets.all(10))
                      .make(),
                  "\$2"
                      .text
                      .bold
                      .make()
                      .paddingAll(20)
                      .box
                      .gray300
                      .roundedFull
                      .margin(const EdgeInsets.all(10))
                      .make(),
                  "\$3"
                      .text
                      .bold
                      .make()
                      .paddingAll(20)
                      .box
                      .gray300
                      .roundedFull
                      .margin(const EdgeInsets.all(10))
                      .make()
                ],
              ),
              20.heightBox,
              "Choose another amount"
                  .text
                  .red500
                  .underline
                  .make()
                  .marginAll(10),
              SizedBox(
                width: 94.w,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(DashboardScreen());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(clrPrimary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  child: const Text(
                    'Submit review',
                  ),
                ),
              ).marginAll(10),
              "Maybe next time".text.gray300.make(),
              20.heightBox,
            ],
          )
              .box
              .white
              .width(double.infinity)
              .margin(const EdgeInsets.all(10))
              .roundedSM
              .make(),
        ),
      ),
    );
  }
}
