import 'dart:ui';

import 'package:medion/view/Notification/notification_page.dart';
import 'package:medion/view/article/article.dart';
import 'package:medion/view/book_Appoiment/book_apoiment_page.dart';

import 'package:medion/view/history/history_page.dart';
import 'package:medion/view/myReport/my_reportpage.dart';
import 'package:medion/view/myfamily&friends/myfamily_friemds.dart';
import 'package:medion/view/myprescription/my_prescription.dart';
import 'package:medion/view/order/order_page.dart';
import 'package:medion/view/receipts/my_receipts.dart';

import 'package:medion/view/specialoffer/special_offer.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:flutter/material.dart';

class OpenDrawer extends StatefulWidget {
  const OpenDrawer({Key? key}) : super(key: key);

  @override
  _OpenDrawerState createState() => _OpenDrawerState();
}

class _OpenDrawerState extends State<OpenDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 5),
          child: Column(
            children: [
              2.h.heightBox,
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(0.0),
                  children: [
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/order.png',
                          height: 55,
                          width: 55,
                        ),
                        //Icon(FontAwesomeIcons.calendarCheck,color: Colors.black,),
                        title: Text(
                          'Book Appointment',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BookAppointment()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/order.png',
                          height: 55,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'My Orders',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OrderPage()));
                    }),
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/history.png',
                          height: 55,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'My History',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HistoryPage()));
                    }),
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/notification-bell.png',
                          height: 20,
                          width: 20,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'Notifications',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).px16().onTap(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notifications()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/group.png',
                          height: 55,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'My family & Friends',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GoogleFit()));
                    }),
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/offer.png',
                          height: 55,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'Special Offer',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SpecialOffer()));
                    }),
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/offer.png',
                          height: 55,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'My Reports',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyReports()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/article.png',
                          height: 55,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'My Receipts',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyReceipts()));
                    }), //ShrareDetails
                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/article-1.png',
                          height: 55,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'My Prescription',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyPrescription()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/article-1.png',
                          height: 55,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'Article',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Article()));
                    }),

                    Container(
                      child: ListTile(
                        leading: Image.asset(
                          'lib/assets/group (1).png',
                          height: 55,
                          width: 55,
                        ),
                        //Icon(Icons.supervised_user_circle,color: Colors.black,),
                        title: Text(
                          'Reffer a Friend',
                          style: TextStyle(color: Colors.black),
                        ),
                        //PersonalDetails
                      ),
                    ).onTap(() {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryPage()));
                    }),
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
