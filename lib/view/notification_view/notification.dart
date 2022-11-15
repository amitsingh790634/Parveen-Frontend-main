import 'package:parveen_frontend/core/package.dart';

import '../../core/color.dart';

class NotificationScreen extends GetView {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(children: [
              Container(
                height: 150,
                color: clrPrimary,
              ),
              const Icon(
                Icons.arrow_back_ios,
                color: Vx.white,
              ).marginAll(15).onInkTap(() {
                Get.back();
              }),
              Column(
                children: [
                  Row(
                    children: [
                      20.widthBox,
                      "Notifications".text.white.bold.size(28).make(),
                      const Spacer(),
                      const Icon(
                        Icons.delete,
                        size: 28,
                        color: Vx.white,
                      ),
                      10.widthBox,
                    ],
                  ),
                  20.heightBox,
                ],
              ).positioned(bottom: 10, left: 0, right: 0)
            ]),
            ListView(
              children: const [
                NotificationItem(
                    title: "System",
                    message: "Your booking #1234 has been succesful")
              ],
            ).expand()
          ],
        ).h(double.infinity),
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String message;
  const NotificationItem({Key? key, required this.title, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 10,
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.check_circle, color: clrPrimary),
        ],
      ),
      title: title.text.make(),
      subtitle: message.text.make(),
    );
  }
}
