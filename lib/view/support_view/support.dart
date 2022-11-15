import '../../core/color.dart';
import '../../core/package.dart';

class SupportView extends GetView {
  const SupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            height: 200,
            color: clrPrimary,
          ),
          const Icon(
            Icons.arrow_back_ios,
            color: Vx.white,
          ).marginAll(15).onInkTap(() {
            Get.back();
          }),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Support".text.white.bold.size(22).make().marginOnly(left: 15),
              10.heightBox,
              const SupportItem(
                  title: "Phone call",
                  message: "Call us 24 x 7, we will answer you!",
                  support: "+919456415214"),
              const SupportItem(
                  title: "Phone call",
                  message: "Call us 24 x 7, we will answer you!",
                  support: "+919456415214"),
              const SupportItem(
                  title: "Phone call",
                  message: "Call us 24 x 7, we will answer you!",
                  support: "+919456415214"),
            ],
          ).positioned(top: 60, left: 0, right: 0, bottom: 0)
        ]).h(double.infinity),
      ),
    );
  }
}

class SupportItem extends StatelessWidget {
  final String title, message, support;
  const SupportItem(
      {Key? key,
      required this.title,
      required this.message,
      required this.support})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.heightBox,
            title.text.make(),
            10.heightBox,
            message.text.gray400.make(),
            8.heightBox,
            support.text.green600.make(),
          ],
        ).pOnly(left: 10).expand(),
        const Icon(
          Icons.arrow_forward_ios,
          color: Vx.gray500,
          size: 15,
        )
      ],
    )
        .paddingAll(10)
        .box
        .shadowSm
        .white
        .margin(const EdgeInsets.all(10))
        .roundedSM
        .make();
  }
}
