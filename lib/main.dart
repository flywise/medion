import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medion/view/book/book_lab.dart';
import 'package:medion/view/book/book_offline.dart';
import 'package:medion/view/book_Appoiment/book_apoiment_page.dart';
import 'package:medion/view/book_Appoiment/book_recipt.dart';

import 'package:medion/view/calender/calender_page.dart';
import 'package:medion/view/calender/select_time.dart';
import 'package:medion/view/contact/contact_page.dart';
import 'package:medion/view/create_account/create_account.dart';
import 'package:medion/view/details/add_details.dart';
import 'package:medion/view/details/details.dart';
import 'package:medion/view/edit_profile/edit_profile_page.dart';
import 'package:medion/view/homepage/homepage.dart';
import 'package:medion/view/login/login.dart';
import 'package:medion/view/order/order_page.dart';
import 'package:medion/view/otp/otp.dart';
import 'package:medion/view/otp/otp_resend.dart';
import 'package:medion/view/password/create_new_password.dart';
import 'package:medion/view/password/forget_password.dart';
import 'package:medion/view/patientdetails/patients_status.dart';
import 'package:medion/view/profile/profile_page.dart';
import 'package:medion/view/receipts/my_receipts.dart';
import 'package:medion/view/splash/splash_Screen.dart';
import 'package:medion/view/trackpage/track_page.dart';
import 'package:medion/view/upload_documents/upload_documents.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SplashScreen());
    });
  }
}
