import 'package:flutter/material.dart';
import 'package:medion/view/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ButtonCommon extends StatelessWidget {
  String? btnName;
  VoidCallback? onpress;
  ButtonCommon({
    Key? key,
    this.btnName,
    this.onpress,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 6.h,
        width: 90.w,
        decoration: BoxDecoration(
            color: btn2, borderRadius: BorderRadius.circular(20.sp)),
        child: '$btnName'
            .text
            .size(12.sp)
            .letterSpacing(1.5)
            .bold
            .white
            .make()
            .centered(),
      ),
    );
  }
}
