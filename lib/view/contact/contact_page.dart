import 'package:flutter/material.dart';
import 'package:medion/view/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 30.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: btn2,
                  //     image: DecorationImage(
                  //   image: AssetImage(
                  //     "lib/assets/contactBack.png",
                  //   ),
                  //   fit: BoxFit.fill,
                  // )
                ),
              ),
              Positioned(
                top: 180,
                child: CircleAvatar(
                    radius: (45),
                    backgroundColor: Colors.grey,
                    child: ClipRRect(
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 50.sp,
                      ),
                    )),
              ),
            ],
          ),
          8.h.heightBox,
          Text("John Doe").text.size(13.sp).center.bold.make(),
          Text("San Francisco, CA"),
          3.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 20.h,
                width: 45.w,
                decoration: BoxDecoration(
                  color: btn2,
                  //     image: DecorationImage(
                  //   image: AssetImage(
                  //     "lib/assets/contactBack.png",
                  //   ),
                  //   fit: BoxFit.fill,
                  // )
                ),
                child: Column(
                  children: [
                    3.h.heightBox,
                    CircleAvatar(
                        radius: (20),
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Icon(
                            Icons.phone,
                            color: Colors.black,
                            size: 15.sp,
                          ),
                        )),
                    2.h.heightBox,
                    Text("Mobile").text.color(Colors.white).make(),
                    1.h.heightBox,
                    Text("+123 456 789 234").text.color(Colors.white).make(),
                  ],
                ),
              ).p8(),
              Container(
                height: 20.h,
                width: 45.w,
                decoration: BoxDecoration(
                  color: btn2,
                  //     image: DecorationImage(
                  //   image: AssetImage(
                  //     "lib/assets/contactBack.png",
                  //   ),
                  //   fit: BoxFit.fill,
                  // )
                ),
                child: Column(
                  children: [
                    3.h.heightBox,
                    CircleAvatar(
                        radius: (20),
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Icon(
                            Icons.email,
                            color: Colors.black,
                            size: 15.sp,
                          ),
                        )),
                    2.h.heightBox,
                    Text("Mobile").text.color(Colors.white).make(),
                    1.h.heightBox,
                    Text("+123 456 789 234").text.color(Colors.white).make(),
                  ],
                ),
              ).p8(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 20.h,
                width: 45.w,
                decoration: BoxDecoration(
                  color: btn2,
                  //     image: DecorationImage(
                  //   image: AssetImage(
                  //     "lib/assets/contactBack.png",
                  //   ),
                  //   fit: BoxFit.fill,
                  // )
                ),
                child: Column(
                  children: [
                    3.h.heightBox,
                    CircleAvatar(
                        radius: (20),
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Icon(
                            Icons.message,
                            color: Colors.black,
                            size: 15.sp,
                          ),
                        )),
                    2.h.heightBox,
                    Text("Mobile").text.color(Colors.white).make(),
                    1.h.heightBox,
                    Text("+123 456 789 234").text.color(Colors.white).make(),
                  ],
                ),
              ).p8(),
              Container(
                height: 20.h,
                width: 45.w,
                decoration: BoxDecoration(
                  color: btn2,
                  //   image: AssetImage(
                  //     "lib/assets/contactBack.png",
                  //   ),
                  //   fit: BoxFit.fill,
                  // )
                ),
                child: Column(
                  children: [
                    3.h.heightBox,
                    CircleAvatar(
                        radius: (20),
                        backgroundColor: Colors.white,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Icon(
                            Icons.chat,
                            color: Colors.black,
                            size: 15.sp,
                          ),
                        )),
                    2.h.heightBox,
                    Text("Mobile").text.color(Colors.white).make(),
                    1.h.heightBox,
                    Text("+123 456 789 234").text.color(Colors.white).make(),
                  ],
                ),
              ).p8(),
            ],
          ),
        ],
      ),
    ));
  }
}
