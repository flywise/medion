import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginButtonWidget extends StatelessWidget {
  String? btnname;
  String? btnImage;
  LoginButtonWidget({
    Key? key,
    this.btnImage,
    this.btnname,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 90.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20.sp),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(100),
            margin: const EdgeInsets.fromLTRB(25, 10, 0, 10),
            height: 30,
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                image: AssetImage(
                  "$btnImage",
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Text("$btnname").text.color(Colors.black).make(),
        ],
      ),
    );
  }
}
