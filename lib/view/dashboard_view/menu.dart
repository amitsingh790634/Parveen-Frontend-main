import 'package:parveen_frontend/core/color.dart';
import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/view/account_view/account.dart';
import 'package:parveen_frontend/view/history_view/history.dart';
import 'package:parveen_frontend/view/invite_friends_view/invite_friends.dart';
import 'package:parveen_frontend/view/support_view/support.dart';
import 'package:parveen_frontend/view/wallet_view/wallet.dart';

import '../notification_view/notification.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 80.w,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/drawer_bg.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    ClipOval(
                      child: Image.asset(
                        'assets/img/profile.jpg',
                        width: 90,
                        height: 90,
                      ),
                    ).box.roundedFull.border(color: Vx.white).make(),
                    10.heightBox,
                    "Larry Davis".text.white.make(),
                    5.heightBox,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        5.widthBox,
                        "Cash".text.size(12).make(),
                        10.widthBox,
                        "2500".text.color(clrPrimary).size(14).bold.make(),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Vx.gray400,
                        )
                      ],
                    ).p(5).box.white.rounded.make(),
                    20.heightBox,
                  ],
                ).w(double.infinity),
              ).w(double.infinity).h(240),
              buildMenuItem(Icons.home_rounded, "Account").onInkTap(() {
                Get.to(const AccountScreen());
              }),
              buildMenuItem(Icons.account_balance_wallet_rounded, "My wallet")
                  .onInkTap(() {
                Get.to(const WalletScreen());
              }),
              buildMenuItem(Icons.history, "History").onInkTap(() {
                Get.to(const HistoryScreen());
              }),
              buildMenuItem(Icons.notifications, "Notification").onInkTap(() {
                Get.to(const NotificationScreen());
              }),
              buildMenuItem(Icons.card_giftcard, "Invite friends").onInkTap(() {
                Get.to(const InviteFriendsScreen());
              }),
              // buildMenuItem(Icons.settings, "Setting").onInkTap(() {
              //   Get.to(const SettingsView());
              // }),
              buildMenuItem(Icons.help, "Support").onInkTap(() {
                Get.to(const SupportView());
              }),
              buildMenuItem(Icons.security, "Terms and Privacy policy")
                  .onInkTap(() {}),
              buildMenuItem(Icons.support_agent, "Conact Us").onInkTap(() {}),
              10.heightBox,
              "Logout".text.red500.make().paddingOnly(left: 20),
              20.heightBox
            ],
          ),
        ));
  }

  Widget buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      minLeadingWidth: 10,
      title: title.text.make(),
    );
  }
}
