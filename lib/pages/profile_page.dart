import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/prof_picture.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ),
                SizedBox(height: 20.h,),
                Center(
                  child: Text(
                    'Mike Tyson',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF110C26),
                      fontSize: 24.sp,
                      fontFamily: 'Airbnb Cereal App',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                Row(
                  children: [
                    Container(
                      width: 183,
                      height: 50,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF5668FF),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10.w,),
                          Text(
                            'Completed tasks:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF110C26),
                              fontSize: 16.sp,
                              fontFamily: 'Airbnb Cereal App',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                          SizedBox(width: 2.w,),
                          Text(
                            '150',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF5668FF),
                              fontSize: 16.sp,
                              fontFamily: 'Airbnb Cereal App',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 180,
                      height: 50,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF5668FF),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10.w,),
                          Text(
                            'Rating:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF110C26),
                              fontSize: 16.sp,
                              fontFamily: 'Airbnb Cereal App',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                          SizedBox(width: 2.w,),
                          Text(
                            '4.7',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF5668FF),
                              fontSize: 16.sp,
                              fontFamily: 'Airbnb Cereal App',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                          SizedBox(width: 2.w,),
                          Icon(Icons.star, color: Colors.yellow,)
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h,),
                Row(
                  children: [
                    Container(
                      width: 183,
                      height: 50,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF5668FF),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10.w,),
                          Text(
                            'Travelled miles:',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF110C26),
                              fontSize: 16.sp,
                              fontFamily: 'Airbnb Cereal App',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                          SizedBox(width: 2.w,),
                          Text(
                            '90k',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF5668FF),
                              fontSize: 16.sp,
                              fontFamily: 'Airbnb Cereal App',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 180,
                      height: 50,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.50,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF5668FF),
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 10.w,),
                          Text(
                            'Experience',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF110C26),
                              fontSize: 16.sp,
                              fontFamily: 'Airbnb Cereal App',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                          SizedBox(width: 2.w,),
                          Text(
                            '15 years',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF5668FF),
                              fontSize: 16.sp,
                              fontFamily: 'Airbnb Cereal App',
                              fontWeight: FontWeight.w400,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h,),
                Text(
                  'ABOUT',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Color(0xFF5668FF),
                    fontSize: 16.sp,
                    fontFamily: 'Airbnb Cereal App',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: 0.16,
                  ),
                ),
                SizedBox(height: 5.h,),
                Image.asset("assets/Rectangle 4150.png"),
                SizedBox(height: 10.h,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Welcome to my profile! As a dedicated driver, I'm here to ensure you enjoy your favorite dishes with friends and family. Experience the joy of great food, conveniently delivered from local food trucks right to your doorstep. I'm committed to providing a prompt and friendly service, so you can relax and have a great time. Looking forward to making your meal times delightful! ",
                        style: TextStyle(
                          color: Color(0xFF3C3E56),
                          fontSize: 16,
                          fontFamily: 'Airbnb Cereal App',
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
