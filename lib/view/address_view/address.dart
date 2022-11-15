import 'package:parveen_frontend/core/color.dart';
import 'package:parveen_frontend/core/package.dart';
import 'package:parveen_frontend/view/vehicle_view/vehicle.dart';
import '../../controller/address_controller.dart';

class AddressScreen extends GetView {
  AddressScreen({Key? key}) : super(key: key);

  final AddressController _addressController = AddressController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          height: 100.h,
          width: 100.w,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/img/bg.png',
                  ),
                  fit: BoxFit.none)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: ,
            children: [
              FloatingActionButton.extended(
                heroTag: 'hero1',

                label: SizedBox(
                  width: 85.w,
                  child: const TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            color: clrBgGrey,
                          ),
                          // isDense: true,
                          // fillColor: clrPrimary,
                          // filled: true,
                          suffixIcon: Icon(
                            Icons.close_rounded,
                            color: clrBgGrey,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusColor: clrPrimary,
                          prefixIconColor: clrGrey,
                          suffixIconColor: clrGrey,
                          hintText: '105 William St, Chicago, US')),
                ),
                onPressed: () {},
                // isExtended: true,
                highlightElevation: 10,
                backgroundColor: clrWhite,
              ).pOnly(top: 12, left: 12),
              30.h.heightBox,
              Image.asset('assets/icon/location_pin_outline.png').centered(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.small(
          heroTag: 'hero2',
          backgroundColor: clrWhite,
          onPressed: () {},
          child: Image.asset('assets/icon/locate_me.png'),
        ),
        bottomNavigationBar: ElevatedButton(
          onPressed: () => Get.to(() => VehicleScreen()),
          child: Text('Apply'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(clrPrimary)),
        ).w(100.w).h(50),
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
