import 'package:parveen_frontend/core/color.dart';
import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/view/booking_view/booking.dart';

class HistoryScreen extends GetView {
  const HistoryScreen({Key? key}) : super(key: key);

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
          ).marginAll(10).onInkTap(() {
            Get.back();
          }),
          Column(
            children: [
              Row(
                children: [
                  20.widthBox,
                  "History".text.white.bold.size(22).make(),
                  const Spacer(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      5.widthBox,
                      "Oct 15,2018".text.size(16).white.make(),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: Vx.white,
                        size: 28,
                      )
                    ],
                  ),
                  10.widthBox,
                ],
              ),
              20.heightBox,
              ListView(
                children: const [
                  BookingItem(),
                  BookingItem(),
                  BookingItem(),
                ],
              ).expand()
            ],
          ).positioned(top: 80, left: 0, right: 0, bottom: 0)
        ]).h(double.infinity),
      ),
    );
  }
}

class BookingItem extends StatelessWidget {
  const BookingItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          leading: const Icon(Icons.radio_button_checked, color: clrPrimary),
          minLeadingWidth: 10,
          dense: true,
          visualDensity: const VisualDensity(vertical: -4),
          title: "7958 Swift Village".text.make(),
        ),
        Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
                3,
                (ii) => Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: Container(
                      height: 3,
                      width: 2,
                      color: Colors.grey,
                    )))).marginOnly(left: 27),
        ListTile(
          leading: const Icon(Icons.location_pin, color: Vx.red600),
          minLeadingWidth: 10,
          dense: true,
          visualDensity: const VisualDensity(vertical: -4),
          title: "7958 Swift Village".text.make(),
        ),
        20.heightBox,
        const VxDivider(color: Vx.gray200),
        20.heightBox,
        Row(
          children: [
            "Rs.75.00".text.bold.make(),
            const Spacer(),
            "Confirm >".text.color(clrPrimary).make()
          ],
        ).marginOnly(left: 25, right: 10)
      ],
    )
        .p(10)
        .box
        .white
        .shadowSm
        .roundedSM
        .margin(const EdgeInsets.all(10))
        .make()
        .onInkTap(() {
      Get.to(BookingScreen());
    });
  }
}
