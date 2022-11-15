import 'package:parveen_frontend/controller/vehicle_controller.dart';
import 'package:parveen_frontend/core/color.dart';
import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/core/text_style.dart';
import 'package:parveen_frontend/view/booking_view/booking.dart';

List path = [
  'assets/icon/just_go.png',
  'assets/icon/limousine.png',
  'assets/icon/luxury.png',
  'assets/icon/electric.png',
  'assets/icon/bike.png',
  'assets/icon/taxi_4.png',
  'assets/icon/taxi_7.png',
];
List<String> price = [
  '\$25.00',
  '\$55.00',
  '\$25.00',
  '\$85.00',
  '\$55.00',
  '\$35.00',
  '\$25.00'
];
List name = [
  'Just go',
  'Limousine',
  'Luxury',
  'Electric',
  'Bike',
  'Taxi 4 Seat',
  'Taxi 7 Seat'
];
List range = [
  'near by you',
  '0.2 km',
  '0.4 km',
  '0.5 km',
  '0.2 km',
  '0.5 km',
  '0.3 km'
];
List time = ['2 min', '5 min', '3 min', '1 min', '7 min', '5 min', '9 min'];

class VehicleScreen extends GetView {
  VehicleScreen({Key? key}) : super(key: key);

  final VehicleController _vehicleController = VehicleController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        bottomNavigationBar: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            // boxShadow: BoxShadow(),
            color: clrWhite,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 1.h.heightBox,
              Image.asset('assets/icon/pull_bar.png').centered(),
              1.h.heightBox,
              Row(
                children: [
                  InkWell(
                      onTap: (() => showModalBottomSheet(
                            enableDrag: true,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            // clipBehavior: Clip.hardEdge,
                            context: context,
                            builder: (context) {
                              return Container(
                                // clipBehavior: Clip.hardEdge,

                                decoration: const BoxDecoration(
                                  color: clrWhite,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(25)),
                                ),
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) => ListTile(
                                      dense: true,
                                      leading: Image.asset(path[index]),
                                      title: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            name[index],
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xff242E42)),
                                          ),
                                          Text(range[index],
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey)),
                                        ],
                                      ),
                                      // Text(
                                      //   'Husky Stadium',
                                      // ),
                                      trailing: Column(
                                        children: [
                                          Text(
                                            price[index],
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff242E42)),
                                          ),
                                          Text(time[index],
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey)),
                                        ],
                                      )
                                      // Image.asset('assets/icon/star.png'),
                                      ).pSymmetric(v: 4),
                                  // Divider(
                                  //   color: clrBgGrey
                                  //       .withOpacity(0.4),
                                  //   indent: 10,
                                  //   endIndent: 10,
                                  //   thickness: 0.8,
                                  // ),

                                  scrollDirection: Axis.vertical,

                                  itemCount: 7,
                                ),
                              );
                            },
                          )),
                      child: Image.asset('assets/icon/just_go.png')),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Just go',
                        style: TextStyle(
                            color: clrDarkBlue, fontWeight: FontWeight.w500),
                      ),
                      0.5.h.heightBox,
                      Text(
                        'Near by you',
                        style: txtGrey_Light_Normal,
                      ),
                    ],
                  ).pOnly(left: 15, right: 15),
                  const Spacer(),
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    const Text(
                      '\$25.00',
                      style: TextStyle(color: clrDarkBlue),
                    ),
                    0.5.h.heightBox,
                    Text(
                      '2 min',
                      style: txtGrey_Light_Normal,
                    ),
                  ]),
                ],
                // mainAxisSize: MainAxisSize.min,
              ).pOnly(left: 24, top: 12, right: 24),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/icon/wallet.png',
                      ),
                      0.5.h.heightBox,
                      Text(
                        'Payment',
                        style: txtGrey_Light_Normal,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Column(children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Spacer(),
                                      const Text(
                                        'Promo Code',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      // Spacer(),
                                      const Spacer(),
                                      const Icon(Icons.close_rounded)
                                          .objectCenterLeft()
                                          .onTap(() {
                                        Get.back();
                                      }),
                                      10.widthBox,
                                    ],
                                  ).pOnly(top: 12),
                                  5.h.heightBox,
                                  TextField(
                                    decoration: InputDecoration(
                                        border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5.0)),
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        prefixIcon: Image.asset(
                                            'assets/icon/promo_color.png'),
                                        contentPadding: const EdgeInsets.all(6),
                                        hintText: 'Input promo code',
                                        hintStyle: const TextStyle(
                                            color: clrBgGrey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400)),
                                  ).w(90.w).h(8.h),
                                  4.h.heightBox,
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                clrPrimary)),
                                    child: const Text('Apply'),
                                  )
                                      .w(double.infinity)
                                      .marginOnly(left: 20, right: 20)
                                ]).h(200);
                              });
                        },
                        child: Image.asset(
                          'assets/icon/promo.png',
                        ),
                      ),
                      0.5.h.heightBox,
                      Text(
                        'Promo Code',
                        style: txtGrey_Light_Normal,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'assets/icon/options.png',
                      ),
                      15.heightBox,
                      Text(
                        'Options',
                        style: txtGrey_Light_Normal,
                      )
                    ],
                  )
                ],
              ),
              3.h.heightBox,
              SizedBox(
                width: 90.w,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => BookingScreen());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(clrPrimary)),
                  child: const Text('Request'),
                ),
              ),
              // Text(
              //   'Popular Locations',
              //   style: txtGrey_Light_Normal,
              // ).objectCenterLeft().pOnly(left: 15),
              // 4.h.heightBox,
            ],
          ).pSymmetric(v: 12),
        ),

        body: Container(
          height: 100.h,
          width: 100.w,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/img/path_bg.png',
                  ),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: ,
            children: [
              FloatingActionButton(
                onPressed: () {},
                // isExtended: true,
                highlightElevation: 10,
                backgroundColor: clrWhite,
                clipBehavior: Clip.hardEdge,

                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: clrWhite, width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: clrBgGrey,
                  ).centered().pOnly(left: 8),
                ),
              ).pOnly(top: 12, left: 12),
              const Spacer(),
              // FloatingActionButton.small(
              //   backgroundColor: clrWhite,
              //   onPressed: () {},
              //   child: Image.asset('assets/icon/locate_me.png'),
              // ).objectBottomRight(),

              // height: 32.h,
            ],
          ),
        ),
        // extendBody: true,
        // bottomNavigationBar:
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
