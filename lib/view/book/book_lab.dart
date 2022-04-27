import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:medion/view/book/book_offline.dart';

import 'package:medion/view/constant/constant.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BookLab extends StatelessWidget {
  BookLab({Key? key}) : super(key: key);
  // final package;

  // BookAppointmentAllController _bookAppointmentAllController = Get.find();
  // Controller _controller = Get.find();

  bool firstbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: themeColor,
        backgroundColor: Colors.white,
        leading: Icon(
          FontAwesomeIcons.chevronLeft,
          color: Colors.black,
          size: 20,
        ).onTap(() {
          Navigator.pop(context);
        }),
        title: 'Book'.text.center.bold.size(19).black.make(),
      ),
      body: Column(
        children: [
          Material(
            elevation: 4,
            child: Container(
              width: 100.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DR. Batra package",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ).p12(),
                  Text(
                    'Includes 77 Tests',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ).px(12),
                  1.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'You will get the report in : 24 hrs',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ).px(20),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: '₹1099/-',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 9.sp)),
                            TextSpan(
                                text: '  ₹599/-',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 9.sp)),
                          ],
                        ),
                      ),
                    ],
                  ).pSymmetric(h: 10.w),
                  3.h.heightBox,
                  Row(
                    children: [
                      Container(
                        height: 3.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Center(
                            child: Text(
                          'Recommended for Male Female',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )),
                      ).p12(),
                      Container(
                        height: 3.h,
                        width: 27.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                        ),
                        child: Center(
                            child: Text(
                          'Age group 5,99 yrs',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        )),
                      ).px1(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Mikky',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 13)),
                            TextSpan(
                                text: '(Self)',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 13)),
                          ],
                        ),
                      ),

                      // Obx(() => Container(
                      //       height: 6.h,
                      //       width: 19.w,
                      //       // child: CheckboxListTile(
                      //       //     controlAffinity: ListTileControlAffinity.leading,
                      //       //     value: _controller.handlerRequired.value,
                      //       //     onChanged: _controller.onHandlerChanged),
                      //     )),

                      Checkbox(
                        value: firstbox,
                        onChanged: (value) {
                          // setState(() {
                          //   firstbox = value!;
                          // }
                          // );
                        },
                      ),
                    ],
                  ).pSymmetric(v: 0.h, h: 3.4.w),
                  Divider(
                    height: 0.0.h,
                    thickness: 2,
                  ).pSymmetric(h: 3.4.w),
                  0.9.heightBox,
                  Text(
                    '+Add New Member',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ).pSymmetric(h: 35.w, v: 1.5.h),
                ],
              ),
            ),
          ),
          3.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 3.5.h,
                  width: 25.w,
                  color: btn2,
                  child: Center(
                    child: Text(
                      'Book Online',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ).p12(),
              ),
              InkWell(
                // onTap: () {
                //   Navigator.push(context, MaterialPageRoute(builder: (context)=>MemberDetails(
                //     package: package
                //   )));
                // },
                child: InkWell(
                  onTap: () {
                    Get.to(OfflineBooking());
                  },
                  child: Container(
                    height: 3.5.h,
                    width: 25.w,
                    color: btn2,
                    child: Center(
                      child: Text(
                        'Book Ofline',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ).p12(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
