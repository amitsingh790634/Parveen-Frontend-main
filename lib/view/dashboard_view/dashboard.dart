// ignore_for_file: prefer_const_constructors

import 'package:parveen_frontend/controller/dashboard_controller.dart';
import 'package:parveen_frontend/core/color.dart';
import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/core/text_style.dart';
import 'package:parveen_frontend/view/address_view/address.dart';
import 'package:parveen_frontend/view/dashboard_view/menu.dart';

class DashboardScreen extends GetView {
  DashboardScreen({Key? key}) : super(key: key);

  final DashboardController _dashboardController = DashboardController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        drawer: DrawerMenu(),
        body: Container(
          height: 100.h,
          width: 100.w,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/img/dash_bg.png',
                  ),
                  fit: BoxFit.none)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: ,
            children: [
              Builder(builder: (context) {
                return FloatingActionButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  // isExtended: true,
                  highlightElevation: 10,
                  backgroundColor: clrWhite,
                  clipBehavior: Clip.hardEdge,

                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: clrWhite, width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/img/profile.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ).pOnly(top: 12, left: 12);
              }),
              Spacer(),
              // FloatingActionButton.small(
              //   backgroundColor: clrWhite,
              //   onPressed: () {},
              //   child: Image.asset('assets/icon/locate_me.png'),
              // ).objectBottomRight(),
            ],
          ),
        ),
        extendBody: true,
        bottomNavigationBar: DraggableScrollableSheet(
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              clipBehavior: Clip.none,
              scrollDirection: Axis.vertical,
              child: Container(
                decoration: BoxDecoration(
                  // boxShadow: BoxShadow(),
                  color: clrWhite,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    // 1.h.heightBox,
                    Image.asset('assets/icon/pull_bar.png').centered(),
                    1.h.heightBox,
                    Row(
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/icon/outline_circle.png'),
                            CustomPaint(
                                size: Size(2, 50),
                                painter: DashedLineVerticalPainter()),
                            Image.asset('assets/icon/location_pin.png'),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PICK - UP',
                              style: txtGrey_Light_Normal,
                            ),
                            0.5.h.heightBox,
                            Text(
                              'My Current Location',
                              style: txt_Medium_Normal,
                            ),
                            // SizedBox(
                            //   height: 1.h,
                            // ),
                            1.5.h.heightBox,

                            Container(
                              height: 1.2,
                              width: 80.w,
                              color: clrBgGrey.withOpacity(0.5),
                            ),

                            1.5.h.heightBox, // SizedBox(
                            //   height: 1.h,
                            // ),
                            Text(
                              'DROP - OFF',
                              style: txtGrey_Light_Normal,
                            ),
                            0.5.h.heightBox,

                            // TextField()

                            Row(
                              children: [
                                Text(
                                  '105 William St, Chicago, US',
                                  style: txt_Medium_Normal,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ).expand(),
                                Image.asset('assets/icon/map.png')
                                    .onTap(() => Get.to(() => AddressScreen()))
                              ],
                            ).w(310),
                          ],
                        ).pOnly(left: 15, right: 15).expand()
                      ],
                      // mainAxisSize: MainAxisSize.min,
                    ).pOnly(left: 24, top: 12),
                    1.h.heightBox,
                    SizedBox(
                      height: 10.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Container(
                          height: 4.h,
                          decoration: BoxDecoration(
                              color: clrWhite,
                              boxShadow: [
                                BoxShadow(
                                    color: clrBgGrey.withOpacity(0.4),
                                    offset: Offset(0, 4),
                                    blurRadius: 4,
                                    spreadRadius: 2),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Text(
                            'University of Washington',
                            style: TextStyle(letterSpacing: 0.6),
                          ).pSymmetric(h: 6).centered(),
                        ).centered().pSymmetric(h: 6),
                        itemCount: 5,
                        padding: EdgeInsets.only(left: 15),
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    2.h.heightBox,
                    Text(
                      'Popular Locations',
                      style: txtGrey_Light_Normal,
                    ).objectCenterLeft().pOnly(left: 15),
                    1.h.heightBox,
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Column(
                        children: [
                          ListTile(
                            dense: true,
                            leading: Image.asset(
                              'assets/icon/location_pin.png',
                            ),
                            title: Text(
                              'Husky Stadium',
                            ),
                            trailing: Image.asset('assets/icon/star.png'),
                          ),
                          Divider(
                            color: clrBgGrey.withOpacity(0.4),
                            indent: 10,
                            endIndent: 10,
                            thickness: 0.8,
                          ),
                        ],
                      ),
                      scrollDirection: Axis.vertical,
                      itemCount: 6,
                    )
                  ],
                ),
              ),
            );
          },
        ).marginAll(5),
      ),
    );
  }
}

class DashedLineVerticalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 5, dashSpace = 3, startY = 0;
    final paint = Paint()
      ..color = clrBgGrey
      ..strokeWidth = 1;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
