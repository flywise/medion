import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:medion/main.dart';
import 'package:medion/view/constant/constant.dart';
import 'package:medion/view/homepage/homepage.dart';

import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter/material.dart';

class Adddetails extends StatelessWidget {
  const Adddetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _value = false;
    int? val = -1;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        // key: _addUserController.userform,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              'Enter Your Details'
                  .text
                  .bold
                  .size(14)
                  .start
                  .make()
                  .pOnly(left: 3.w, top: 3.h),
              2.h.heightBox,
              TextFormField(
                // validator: _addUserController.validatename,
                // controller: _addUserController.name,
                decoration: InputDecoration(
                  hintText: 'Name',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),
                  ),
                ),
              ).pSymmetric(h: 4.w),
              TextFormField(
                // validator: _addUserController.validateEmail,
                // controller: _addUserController.email,
                decoration: InputDecoration(
                  hintText: 'Email',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),
                  ),
                ),
              ).pSymmetric(h: 4.w),
              TextFormField(
                // validator: _addUserController.validateAge,
                // controller: _addUserController.age,
                decoration: InputDecoration(
                  hintText: 'Age',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),
                  ),
                ),
              ).pSymmetric(h: 4.w),
              TextFormField(
                // controller: _addUserController.mobile,
                // validator: _addUserController.validateMobile,
                decoration: InputDecoration(
                  hintText: 'Mobile',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 0.5),
                  ),
                ),
              ).pSymmetric(h: 4.w),
              3.h.heightBox,

              // Container(
              //   child: Row(
              //     children: [
              //       Icon(FontAwesomeIcons.mars,size: 18,),
              //       2.w.widthBox,
              //       Text('Male',style: TextStyle(
              //         color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold
              //       ),)
              //     ],
              //   ),
              // ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 4.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4.sp)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.male), Text("Male")],
                    ),
                  ),
                  Container(
                    height: 4.h,
                    width: 25.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4.sp)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.female), Text("Female")],
                    ),
                  )
                ],
              ),

              // Icon(FontAwesomeIcons.venus,size: 18,),
              // 2.w.widthBox,
              // Text('Female',style: TextStyle(
              //     color: Colors.black,fontSize: 11,fontWeight: FontWeight.bold
              // ),)

              10.h.heightBox,

              Container(
                height: 5.h,
                width: 29.w,
                decoration: BoxDecoration(
                  color: btn2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: 'Submit'.text.bold.center.white.size(14).make()),
              ).pOnly(left: 36.w).onTap(() {
                Get.to(() => HomePage());
                // _addUserController.CheckMobile();
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              }),

              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,
                        left: 270,
                        child: Container(
                          height: 22.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                              color: btn2, shape: BoxShape.circle),
                        )),
                    Positioned(
                        top: 20,
                        right: -50,
                        child: Container(
                          height: 22.h,
                          width: 22.h,
                          decoration: BoxDecoration(
                              color: btn2, shape: BoxShape.circle),
                        )),
                    Positioned(
                        bottom: -190,
                        left: -80,
                        child: Container(
                          height: 82.h,
                          width: 39.h,
                          decoration: BoxDecoration(
                              color: btn2, shape: BoxShape.circle),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
