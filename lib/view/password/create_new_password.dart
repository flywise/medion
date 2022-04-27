import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:medion/view/login/login.dart';
import 'package:medion/view/widgets/button_common.dart';
import 'package:sizer/sizer.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Create New Password ",
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
              height: 5.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "New Password",
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Confirm Password",
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            ButtonCommon(
              btnName: "Create Password",
              onpress: () {
                Get.to(Login());
              },
            ),
          ],
        ),
      ),
    );
  }
}
