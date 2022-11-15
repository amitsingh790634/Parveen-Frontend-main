import 'package:parveen_frontend/controller/serviceUnavailable_controller.dart';
import 'package:parveen_frontend/core/color.dart';
import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/view/dashboard_view/dashboard.dart';

class ServiceUnavailableScreen extends GetView {
  ServiceUnavailableScreen({Key? key}) : super(key: key);

  final ServiceUnavailableController _serviceUnavailableController =
      Get.put(ServiceUnavailableController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              10.h.heightBox,
              Image.asset(
                'assets/icon/scooter_rider.png',
                scale: 0.8,
              ).centered(),
              4.h.heightBox,
              Text(
                'Oop’s no service available',
                style: TextStyle(
                    color: clrBlack,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w600),
              ).centered(),
              2.h.heightBox,
              Flex(
                direction: Axis.vertical,
                children: [
                  const Text(
                    'Please wait for sometime and try again.',
                    textAlign: TextAlign.center,
                  ).pSymmetric(h: 90),
                ],
              ).centered(),
              4.h.heightBox,
              SizedBox(
                width: 90.w,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => DashboardScreen());
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(clrPrimary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  child: const Text(
                    'Try Again',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.8,
                        fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
