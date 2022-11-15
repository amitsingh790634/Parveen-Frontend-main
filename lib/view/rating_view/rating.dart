import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/view/tips_view/tips.dart';

import '../../core/color.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);

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
              "How is your trip?".text.bold.gray700.size(22).make(),
              20.heightBox,
              "Your feedback will help improve \ndriving experience"
                  .text
                  .gray600
                  .center
                  .make(),
              20.heightBox,
              VxRating(
                onRatingUpdate: (value) {},
                size: 38,
              ),
              20.heightBox,
              const VxTextField(
                maxLine: 6,
                borderRadius: 8,
                borderColor: Vx.gray300,
                hint: "Additional comments...",
                borderType: VxTextFieldBorderType.roundLine,
              ).h(100).marginAll(10),
              SizedBox(
                width: 94.w,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const TipsScreen());
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
