import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medion/view/constant/constant.dart';
import 'package:medion/view/details/add_details.dart';
import 'package:medion/view/details/details.dart';

import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/otp_page_widget.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            5.h.heightBox,
            Image.asset("lib/assets/welcome_image.png"),
            20.h.heightBox,
            Column(
              children: [
                Container(
                  height: 27.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: btn2,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.sp),
                        topRight: Radius.circular(20.sp),
                      )),
                  child: OtpWidget(
                    btnotp: "Continue",
                    onpress: () {
                      Get.to(Adddetails());
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
