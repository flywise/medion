import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:medion/view/constant/constant.dart';
import 'package:medion/view/create_account/create_account.dart';
import 'package:medion/view/details/add_details.dart';
import 'package:medion/view/password/forget_password.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/button_common.dart';
import '../widgets/loginbutton_widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 100.w,
          color: Colors.white,
          child: Column(
            children: [
              2.h.heightBox,
              Container(
                  height: 35.h,
                  child: Image.asset('lib/assets/welcome_image.png')),
              Text("Welcome")
                  .text
                  .size(18.sp)
                  .color(Colors.black)
                  .bold
                  .makeCentered(),
              2.h.heightBox,
              Text("Log in to get started")
                  .text
                  .color(Colors.black)
                  .makeCentered(),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Mobile No.",
                        contentPadding: const EdgeInsets.all(5)),
                  ),
                  2.h.heightBox,
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        contentPadding: const EdgeInsets.all(5)),
                  ),
                ],
              )).p16(),
              2.h.heightBox,
              ButtonCommon(
                btnName: "SIGN IN",
                onpress: () {
                  Get.to(Adddetails());
                },
              ),
              1.h.heightBox,
              InkWell(
                  onTap: () {
                    Get.to(ForgetPassword());
                  },
                  child:
                      Text("Forget Password").text.center.color(btn2).make()),
              3.h.heightBox,
              LoginButtonWidget(
                btnImage: "lib/assets/loginfacebooicon.png",
                btnname: "Sign In with Facebook",
              ),
              2.h.heightBox,
              LoginButtonWidget(
                btnImage: "lib/assets/logingoogleicon.png",
                btnname: "Sign In with Google",
              ),
              2.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ")
                      .text
                      .color(btn2)
                      .makeCentered(),
                  InkWell(
                      onTap: () {
                        Get.to(CreateAccount());
                      },
                      child:
                          Text("Signup").text.color(btn2).bold.makeCentered())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
