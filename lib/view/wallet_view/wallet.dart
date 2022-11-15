import '../../core/color.dart';
import '../../core/package.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "My Wallet".text.white.bold.size(28).make().marginOnly(left: 15),
              const Spacer(),
              Row(
                children: [
                  Image.asset("assets/img/coin.png"),
                  10.widthBox,
                  "2500".text.bold.white.size(26).make()
                ],
              ),
              10.widthBox
            ],
          ).positioned(top: 60, left: 0, right: 0, bottom: 0)
        ]).h(double.infinity),
      ),
    );
  }
}

class WalletItem extends StatelessWidget {
  const WalletItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [],
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
