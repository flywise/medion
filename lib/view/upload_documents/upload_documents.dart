import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medion/view/constant/constant.dart';
import 'package:medion/view/homepage/homepage.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';

class UploadDocument extends StatelessWidget {
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  UploadDocument({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: btn2,
        backgroundColor: Colors.white,
        leading: const Icon(
          FontAwesomeIcons.chevronLeft,
          color: Colors.black,
          size: 20,
        ).onTap(() {
          Navigator.pop(context);
        }),
        title:
            'Upload Your prescription'.text.center.bold.size(19).black.make(),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.only(top: 20.sp),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Choose an option to upload",
                ),
              ),
              4.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      TakePhoto(ImageSource.gallery);
                    },
                    child: Container(
                      height: 10.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.sp),
                          color: Colors.black54,
                          image: DecorationImage(
                              image: AssetImage("lib/assets/cameraicon.png"))),
                    ),
                  ),
                  20.w.widthBox,
                  InkWell(
                    onTap: () {
                      TakePhoto(ImageSource.gallery);
                    },
                    child: Container(
                      height: 10.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.sp),
                          color: Colors.black38,
                          image: DecorationImage(
                              image: AssetImage("lib/assets/imageicon.png"))),
                    ),
                  )
                ],
              ),
              3.h.heightBox,
              Container(
                height: 20.h,
                width: 100.w,
                decoration: BoxDecoration(color: Color(0xFFFFFFFF), boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0.5,
                    blurRadius: 2.0,
                  ),
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset("lib/assets/prescription.png"),
                    Text("Attached Prescriptions").text.size(13.sp).make(),
                  ],
                ),
              ),
              2.h.heightBox,
              Text("* Image should not exceed 5 mb "),
              3.h.heightBox,
              Container(
                height: 4.h,
                width: 80.w,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: 'Enter Your Details'
                    .text
                    .color(Colors.white)
                    .makeCentered(),
              ),
              Container(
                height: 20.h,
                width: 80.w,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(8.sp),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Full name of patient* ',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.sp),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Mobile Number* ',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              3.h.heightBox,
              Container(
                height: 3.5.h,
                width: 35.w,
                decoration: BoxDecoration(
                  color: Color(0xff044B7F),
                ),
                child: 'Selected'
                    .text
                    .size(10.sp)
                    .letterSpacing(1.5)
                    .bold
                    .white
                    .make()
                    .centered(),
              ).onTap(() {
                Get.to(HomePage());
              })
            ],
          ),
        ),
      ),
    );
  }
}

class TakePhoto {
  TakePhoto(ImageSource gallery);
}
