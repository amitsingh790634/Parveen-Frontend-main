import 'package:parveen_frontend/core/color.dart';
import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/view/rideCompletion_view/rideCompletion.dart';
import '../../controller/booking_controller.dart';

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

class BookingScreen extends GetView {
  BookingScreen({Key? key}) : super(key: key);

  final BookingController _bookingController = BookingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        bottomNavigationBar: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurStyle: BlurStyle.normal,
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                  spreadRadius: 2,
                  color: clrGrey.withOpacity(0.6))
            ],
            color: clrWhite,
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(10),
              bottom: Radius.circular(10),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Image.asset('assets/img/driver.png'),
                  10.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Gregory Smith',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      4.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/icon/star_filled.png'),
                          8.widthBox,
                          const Text(
                            '4.9',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: clrBgGrey),
                          )
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Image.asset('assets/icon/call.png'),
                ],
              ).paddingSymmetric(horizontal: 14, vertical: 6),
              Divider(
                color: clrBgGrey.withOpacity(0.4),
                indent: 12,
                endIndent: 12,
                thickness: 0.6,
              ),
              10.heightBox,
              Row(
                children: [
                  Image.asset('assets/img/user_1.png'),
                  6.widthBox,
                  Image.asset('assets/img/user_2.png'),
                  6.widthBox,
                  Image.asset('assets/img/user_3.png'),
                  16.widthBox,
                  const Text(
                    '25 Recommended',
                    style: TextStyle(color: clrTextgrey, fontSize: 12),
                  )
                ],
              ).pSymmetric(h: 14),
              10.heightBox,
              Divider(
                color: clrBgGrey.withOpacity(0.4),
                indent: 12,
                endIndent: 12,
                thickness: 0.6,
              ),
              10.heightBox,
              Row(
                children: [
                  const Text(
                    'Time',
                    style: TextStyle(color: clrGrey, fontSize: 14),
                  ),
                  25.widthBox,
                  const Text(
                    'Price',
                    style: TextStyle(color: clrGrey, fontSize: 14),
                  )
                ],
              ).pSymmetric(h: 24),
              6.heightBox,
              Row(
                children: [
                  const Text(
                    '2 Min',
                    style: TextStyle(
                        color: clrBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  25.widthBox,
                  const Text(
                    '\$25.00',
                    style: TextStyle(
                        color: clrBlack,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ).pSymmetric(h: 24),
              20.heightBox,
              ElevatedButton(
                onPressed: () {
                  // showDialog(
                  //   context: context,
                  //   builder: (BuildContext context) {
                  //     return Expanded(
                  //       child: AlertDialog(
                  //         title: Text('Welcome'),
                  //         content: Text('GeeksforGeeks'),
                  //         actions: [
                  //           FlatButton(
                  //             textColor: Colors.black,
                  //             onPressed: () {},
                  //             child: Text('CANCEL'),
                  //           ),
                  //           FlatButton(
                  //             textColor: Colors.black,
                  //             onPressed: () {},
                  //             child: Text('ACCEPT'),
                  //           ),
                  //         ],
                  //       ),
                  //     );
                  //   },
                  // );

                  showDialog(
                      barrierDismissible: true,
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          // clipBehavior: Clip.?,

                          // shape: ,
                          backgroundColor: clrWhite,
                          // shape: ShapeBorder(),
                          content: Container(
                            decoration: const BoxDecoration(
                                color: clrWhite,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),

                            // width: 96.w,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset('assets/icon/check.png'),
                                  2.h.heightBox,
                                  const Text(
                                    'Booking Successful',
                                    style: TextStyle(
                                        color: clrBlack,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  2.h.heightBox,
                                  Flex(
                                    direction: Axis.vertical,
                                    children: const [
                                      Text(
                                        'Your booking has been confirmed. Driver will pickup you in 2 minutes.',
                                        style: TextStyle(fontSize: 12),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ).pSymmetric(h: 20),
                                  // 4.h.heightBox,
                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  //     TextButton(
                                  //         // clipBehavior: Clip.hardEdge,
                                  //         style: ButtonStyle(
                                  //             foregroundColor:
                                  //                 MaterialStateProperty
                                  //                     .all(clrGrey)),
                                  //         onPressed: () {},
                                  //         child: Text(
                                  //           'Cancel',
                                  //           style:
                                  //               TextStyle(fontSize: 12),
                                  //         )),
                                  //     TextButton(
                                  //         style: ButtonStyle(
                                  //             foregroundColor:
                                  //                 MaterialStateProperty
                                  //                     .all(clrPrimary)),
                                  //         onPressed: () {},
                                  //         child: Text(
                                  //           'Done',
                                  //           style:
                                  //               TextStyle(fontSize: 12),
                                  //         ))
                                  //   ],
                                  // ).pSymmetric(h: 12),
                                ]),
                          ),
                          actionsPadding:
                              const EdgeInsets.symmetric(horizontal: 14),
                          actionsAlignment: MainAxisAlignment.spaceBetween,
                          actions: [
                            TextButton(
                                // clipBehavior: Clip.hardEdge,
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all(clrGrey)),
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text(
                                  'Cancel',
                                  style: TextStyle(fontSize: 12),
                                )),
                            TextButton(
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all(clrPrimary)),
                                onPressed: () {
                                  Get.to(() => RideCompletionScreen());
                                },
                                child: const Text(
                                  'Done',
                                  style: TextStyle(fontSize: 12),
                                ))
                          ],
                        );
                      });
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(clrPrimary)),
                child: const Text('Confirm'),
              ).w(86.w).h(5.h),
            ],
          ).pSymmetric(v: 12),
        ).pOnly(bottom: 20, left: 10, right: 10),
        body: Container(
          width: double.infinity,
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
                onPressed: () {
                  Get.back();
                },
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
