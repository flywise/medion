import 'package:flutter/material.dart';
import 'package:medion/view/widgets/otp_box_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OtpWidget extends StatelessWidget {
  String? btnotp;
  VoidCallback? onpress;
  OtpWidget({Key? key, this.btnotp, this.onpress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        2.h.heightBox,
        Text("Verification").text.color(Colors.white).bold.makeCentered(),
        1.h.heightBox,
        Text("Enter OTP sent to your registered mobile number")
            .text
            .color(Colors.white)
            .makeCentered(),
        2.h.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OtpBoxWidget(
              first: true,
              last: false,
            ),
            3.w.widthBox,
            OtpBoxWidget(
              first: false,
              last: false,
            ),
            3.w.widthBox,
            OtpBoxWidget(
              first: false,
              last: false,
            ),
            3.w.widthBox,
            OtpBoxWidget(
              first: false,
              last: true,
            ),
          ],
        ),
        3.h.heightBox,
        GestureDetector(
          onTap: onpress,
          child: Container(
            height: 4.h,
            width: 27.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(6.sp)),
            child: '$btnotp'.text.makeCentered(),
          ),
        )
      ],
    );
  }
}
