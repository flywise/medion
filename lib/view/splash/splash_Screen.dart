import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:medion/view/constant/constant.dart';
import 'package:medion/view/login/login.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  static String route = '/splase-screen';
  const SplashScreen({Key? key}) : super(key: key);

  get buttonColor => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: 100.h,
        width: 100.w,
        decoration: const BoxDecoration(
          color: Colors.white,
          // gradient: LinearGradient(
          //   colors: [
          //     Colors.white,
          //     Colors.blue,
          //   ],
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          // ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(),
            Container(
              height: 25.h,
              child: Lottie.asset('lib/assets/15193-como-funciona-01.json'),

              //from here svg image code

              // SvgPicture.asset(
              //   'lib/assets/svg/Avanti-Home-1024x563-1-1 (1).svg',
              //   // height: 20.0,
              //   // width: 20.0,
              //   //allowDrawingOutsideViewBox: true,
              // ),
            ),
            Spacer(),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 2.h),
                  child: Container(
                    height: 4.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                      color: btn2,
                      borderRadius: BorderRadius.circular(5.sp),
                    ),
                    child: 'Next'
                        .text
                        .size(12.sp)
                        .letterSpacing(1.5)
                        .bold
                        .white
                        .make()
                        .centered(),
                  ).onTap(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
