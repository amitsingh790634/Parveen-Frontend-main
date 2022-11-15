import 'package:parveen_frontend/core/color.dart';
import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/view/rating_view/rating.dart';

import '../../controller/rideCompletion_controller.dart';

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

class RideCompletionScreen extends GetView {
  RideCompletionScreen({Key? key}) : super(key: key);

  final RideCompletionController _rideCompletionController =
      RideCompletionController();

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
              2.h.heightBox,
              const Text(
                'Arrived Successful',
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: 16, color: clrBlack),
              ),
              Divider(
                color: clrBgGrey.withOpacity(0.6),
                indent: 12,
                endIndent: 12,
                thickness: 0.6,
              ),
              1.h.heightBox,
              Row(
                children: [
                  Image.asset('assets/img/driver.png'),
                  4.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Driver Name',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icon/star_filled.png',
                          ),
                          1.w.widthBox,
                          const Text(
                            '4.8',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: clrGrey),
                          )
                        ],
                      ),
                    ],
                  ).expand(),
                  Column(
                    children: const [
                      Text(
                        'Time',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: clrGrey),
                      ),
                      Text(
                        '2 Min',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: clrBlack),
                      )
                    ],
                  ),
                  4.w.widthBox,
                  Column(
                    children: const [
                      Text(
                        'Time',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: clrGrey),
                      ),
                      Text(
                        '2 Min',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: clrBlack),
                      )
                    ],
                  )
                ],
              ).pSymmetric(h: 12),
              Divider(
                color: clrBgGrey.withOpacity(0.6),
                indent: 12,
                endIndent: 12,
                thickness: 0.6,
              ),
              1.h.heightBox,
              const Text(
                'TRIP',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w400, color: clrGrey),
              ).objectCenterLeft().pOnly(left: 12),
              1.h.heightBox,
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset('assets/icon/outline_circle.png'),
                      CustomPaint(
                          size: const Size(2, 50),
                          painter: DashedLineVerticalPainter()),
                      Image.asset('assets/icon/location_pin.png'),
                    ],
                  ),
                  4.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '345 City Park',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: clrBlack),
                      ),
                      50.heightBox,
                      const Text(
                        'Barclay Stadium',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: clrBlack),
                      ),
                    ],
                  ),
                  // Spacer(),
                  30.w.widthBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '04:00 pm',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: clrGrey),
                      ),
                      50.heightBox,
                      const Text(
                        '04:40 pm',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: clrGrey),
                      ),
                    ],
                  ),
                ],
              ).pSymmetric(h: 12),
              1.h.heightBox,
              Divider(
                color: clrBgGrey.withOpacity(0.6),
                indent: 12,
                endIndent: 12,
                thickness: 0.6,
              ),
              1.5.h.heightBox,
              const Text(
                'How was your Trip?',
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w500, color: clrBlack),
              ).centered(),
              1.5.h.heightBox,
              Flex(
                direction: Axis.vertical,
                children: [
                  const Text(
                    'Your feedback will help us improve driving experience better',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: clrGrey),
                  ).paddingSymmetric(horizontal: 24)
                ],
              ),
              2.h.heightBox,
              VxRating(
                onRatingUpdate: (value) {},
                selectionColor: Vx.yellow500,
                size: 30,
              ),
              4.h.heightBox,
              SizedBox(
                width: 86.w,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const RatingScreen());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(clrPrimary)),
                  child: const Text('Submit'),
                ),
              ),
            ],
          ).pSymmetric(v: 12),
        ),

        body: Container(
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
