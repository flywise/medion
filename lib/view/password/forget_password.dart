import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:medion/view/otp/otp_resend.dart';
import 'package:medion/view/widgets/button_common.dart';
import 'package:sizer/sizer.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Forget Password ",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
            Center(
                child: Text(
              "Enter Your Mobile Number to get the \n verification code",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13.sp),
            )),
            SizedBox(
              height: 5.h,
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Mobile No",
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            ButtonCommon(
              btnName: "Next",
              onpress: () {
                Get.to(OtpResend());
              },
            )
          ],
        ),
      ),
    );
  }
}
