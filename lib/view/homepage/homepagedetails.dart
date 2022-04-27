import 'dart:io';

import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import 'package:lottie/lottie.dart';
import 'package:medion/view/constant/constant.dart';
import 'package:medion/view/upload_documents/upload_documents.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:file_picker/file_picker.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:get/get.dart';

class HomePageDetails extends StatelessWidget {
  HomePageDetails({Key? key}) : super(key: key);

  //  HomePageController _homePageController = Get.put(HomePageController());
  //  GetProfileController _getProfileController = Get.put(GetProfileController());
  //  GetDiseaseController _getDiseaseController = Get.put(GetDiseaseController());
  //  GetTopPackagesController _getTopPackagesController = Get.put(GetTopPackagesController());

  List<String> text = [
    'Book Home Sample collection',
    'Upload Prescription',
    'Book Lab Test Via Whatsapp',
    'Download Your report',
  ];
  List<String> images = [
    'lib/assets/skin-rash.png',
    'lib/assets/stomach.png',
    'lib/assets/ribbon.png',
    'lib/assets/bones.png',
    'lib/assets/sugar-blood-level.png',
    'lib/assets/skin-rash.png',
    'lib/assets/stomach.png',
    'lib/assets/ribbon.png',
    'lib/assets/bones.png',
    'lib/assets/sugar-blood-level.png',
  ];

  List<String> imagetext = [
    'Allergy',
    'Acidity',
    'Cancer',
    'Bone',
    'Blood Test',
    'Allergy',
    'Acidity',
    'Cancer',
    'Bone',
    'Blood Test',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              2.h.heightBox,
              Container(
                height: 4.2.h,
                width: 94.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(color: btn2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 6.h,
                        width: 70.w,
                        color: Colors.white,
                        child: VxTextField(
                          prefixIcon: Icon(Icons.search),
                          hint: ' Search any test',
                          keyboardType: TextInputType.name,
                          obscureText: false,
                          //controller: _homePageController.otp,
                          borderType: VxTextFieldBorderType.none,
                          borderRadius: 5,
                          borderColor: Colors.grey,
                        )),
                    Container(
                      height: 6.5.h,
                      width: 0.2.w,
                      color: btn2,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UploadDocument()));
                      },
                      child: Container(
                        height: 5.h,
                        child: Center(
                          child: Container(
                            height: 37,
                            width: 35,
                            child: Center(
                                child: Image.asset('lib/assets/result.png')),
                          ).pOnly(right: 3.w),
                        ),
                      ),
                    ),
                  ],
                ),
              ).onTap(() {
                //Navigator.push(context, (context)=> VarifyNumber())
              }).pSymmetric(h: 3.w),
              1.h.heightBox,
              SizedBox(
                height: 14.h,
                width: 90.w,
                child: ListView.builder(
                    //physics:  NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    // itemCount:_homePageController.getbanner.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 9.h,
                        width: 75.w,
                        color: btn2,
                        child: Row(
                          children: [
                            Text(
                              'Lorem Ipsum is simply dummy text\n of the printing and typesetting \nindustry. Lorem Ipsum has been'
                              'the \n industry standard dummy\n text ever since the 1500s\n when an unknown printer galley of',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white),
                            ),
                            Container(
                              height: 12.h,
                              child: Lottie.asset(
                                  'lib/assets/24867-online-doctor-app.json'),

                              //from here svg image code

                              // SvgPicture.asset(
                              //   'lib/assets/svg/Avanti-Home-1024x563-1-1 (1).svg',
                              //   // height: 20.0,
                              //   // width: 20.0,
                              //   //allowDrawingOutsideViewBox: true,
                              // ),
                            ),
                          ],
                        ).pSymmetric(h: 2.w),
                      ).pSymmetric(h: 2.w);
                    }),
              ),
              1.h.heightBox,
              ClipPath(
                // clipper:  MyCustomClipper(),
                child: Container(
                  height: 4.h,
                  width: 97.w,
                  color: btn2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomPaint(
                        painter: RPSCustomPainter(),
                        child: Container(
                          height: 18.h,
                          width: 30.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Center(
                                  child: Icon(
                                Icons.check_circle,
                                color: Colors.white,
                              )),
                              2.w.widthBox,
                              'FREE'
                                  .text
                                  .bold
                                  .color(Colors.white)
                                  .size(18)
                                  .make(),
                            ],
                          ),
                        ),
                      ),
                      Center(
                          child: 'Home Sample Collection for new user'
                              .text
                              .size(14)
                              .color(Colors.white)
                              .bold
                              .make()),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Categories").text.size(12.sp).bold.make(),
                  Text("View All").text.size(10.sp).color(btn2).bold.make()
                ],
              ).p12(),
              SizedBox(
                height: 15.h,
                width: 100.w,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, index) {
                      return Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),
                                child: CircleAvatar(
                                    radius: (35),
                                    backgroundColor: btn2,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Image.asset(
                                        images[index],
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              Text(imagetext[index]),
                              10.w.widthBox,
                            ],
                          )
                        ],
                      );
                    }).px(3),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Most common risk areas").text.size(12.sp).bold.make(),
                  Text("View All").text.size(10.sp).color(btn2).bold.make()
                ],
              ).p12(),
              SizedBox(
                height: 15.h,
                width: 100.w,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, index) {
                      return Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),
                                child: CircleAvatar(
                                    radius: (35),
                                    backgroundColor: btn2,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(16),
                                      child: Image.asset(
                                        images[index],
                                        fit: BoxFit.cover,
                                      ),
                                    )),
                              ),
                              Text(imagetext[index]),
                              10.w.widthBox,
                            ],
                          )
                        ],
                      );
                    }).px(3),
              ),
              Container(
                height: 17.h,
                width: 95.w,
                color: btn2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ensuring your safety \nagainst Corona Virus\nat evert step.",
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    Container(
                        height: 14.h,
                        width: 35.w,
                        color: Colors.white,
                        child: Image.asset("lib/assets/doctor-fighting.png")),
                  ],
                ).pSymmetric(h: 4.w),
              ).pSymmetric(v: 1.h, h: 5.3.w),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0, size.height * 0.4000000);
    path0.lineTo(size.width * 0.0, size.height * 0.0080000);
    path0.lineTo(size.width * 0.9383333, size.height * 0.0160000);
    path0.lineTo(size.width * 0.6783333, size.height * 0.9000000);
    path0.lineTo(size.width * 0.0, size.height * 0.9000000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

Widget ImageText(img, title, ontap) {
  return Container(
    height: 15.h,
    width: 22.w,
    child: Column(
      children: [
        CircleAvatar(
          radius: 27,
          backgroundColor: btn2,
          backgroundImage: NetworkImage(img),
        ),
        '$title'.text.gray600.size(6).semiBold.gray700.make().objectCenter(),
      ],
    ),
  ).onTap(ontap);
}
