import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medion/view/book_Appoiment/book_recipt.dart';

import 'package:medion/view/constant/constant.dart';
import 'package:medion/view/receipts/my_receipts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:sizer/sizer.dart';

class PatientStatus extends StatelessWidget {
  PatientStatus({
    Key? key,
  }) : super(key: key);

  // final AddPatientController _addPatientController = Get.put(AddPatientController());

  FocusNode myFocusNode = new FocusNode();
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
        title: 'Patient Detail'.text.center.bold.size(19).black.make(),
      ),
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          // key: _addPatientController.userform,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Material(
                    elevation: 4,
                    child: Container(
                      width: 100.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'DR.Batra packages',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ).p12(),
                          const Text(
                            'Includes 77 Tests',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ).px(12),
                          1.h.heightBox,
                          1.h.heightBox,
                          Row(
                            children: [
                              Container(
                                height: 3.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                                child: Center(
                                    child: Text(
                                  'Recommended for Male Female',
                                  style: TextStyle(
                                    fontSize: 7.sp,
                                  ),
                                )),
                              ).p12(),
                              Container(
                                height: 3.h,
                                width: 25.w,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                                child: Center(
                                    child: Text(
                                  'Age group 5,99 yrs',
                                  style: TextStyle(
                                    fontSize: 7.sp,
                                  ),
                                )),
                              ).px1(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
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
                              ).pSymmetric(h: 7.2.w),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  9.h.heightBox,
                  Text(
                    'Enter patient Detail',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  1.h.heightBox,
                  Container(
                    height: 27.h,
                    width: 100.w,
                    color: btn2,
                    child: Column(
                      children: [
                        2.h.heightBox,
                        Text(
                          'You will reeive the appointment detaila on the number provided by you',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 9.sp,
                          ),
                        ),
                        4.h.heightBox,
                        Container(
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(splashColor: Colors.transparent),
                            child: TextFormField(
                              // controller: _addPatientController.Patientname,
                              // validator: _addPatientController.validatename,
                              // textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: -0.2.h),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: '  Patient\'s Name',
                                labelStyle: TextStyle(
                                    fontSize: 8,
                                    color: myFocusNode.hasFocus
                                        ? Colors.blue
                                        : btn2),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 0, color: btn2),
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),

                          decoration: BoxDecoration(
                              borderRadius:
                                  new BorderRadius.all(new Radius.circular(0)),
                              color: Colors.white),
                          width: 350,
                          height: 4.5.h,
                          //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                          //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                        ).pSymmetric(v: 1.5.h),
                        Container(
                          child: Theme(
                            data: Theme.of(context)
                                .copyWith(splashColor: Colors.transparent),
                            child: TextFormField(
                              // controller: _addPatientController.Pateintnumber,
                              // validator: _addPatientController.validateNumber,
                              // textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: -0.2.h),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: '  Patient\'s Mobile Number',
                                labelStyle: TextStyle(
                                    fontSize: 8,
                                    color: myFocusNode.hasFocus
                                        ? Colors.blue
                                        : btn2),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(width: 0, color: btn2),
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ),
                          ),

                          decoration: BoxDecoration(
                              borderRadius:
                                  new BorderRadius.all(new Radius.circular(0)),
                              color: Colors.white),
                          width: 350,
                          height: 4.5.h,
                          //margin: new EdgeInsets.fromLTRB(20, 20, 20, 210),
                          //padding: new EdgeInsets.fromLTRB(8, 8, 8, 8),
                        ).pSymmetric(v: 1.h),
                      ],
                    ),
                  ),
                  2.h.heightBox,
                  Text(
                    'Appointment details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  1.h.heightBox,
                  Text(
                    'Date of Appointment December 20 th 2021 Time of Appointment 8:30 AM',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                    ),
                  ),
                  5.h.heightBox,
                  InkWell(
                    onTap: () {
                      // _addPatientController.CheckEmail(date, time, name.text, package, relation.text, DOB.text, gender.text, number.text, email.text);
                      // _addPatientController.callMemberApi();
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>DownloadReceipts()));
                    },
                    child: InkWell(
                      onTap: () {
                        Get.to(DownloadReceipts());
                      },
                      child: Container(
                        height: 5.h,
                        width: 25.w,
                        color: btn2,
                        child: Center(
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
