import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/images/imges.dart';


class OnboardingPage extends StatelessWidget {
  final String imageUrl;
  final String title;


  const OnboardingPage({super.key, required this.imageUrl, required this.title,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset(appLogo, height: 73.h, width: 73.h,),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 55.sp, fontWeight: FontWeight.bold,
                  fontFamily: 'Gilroy',
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12.0),
          Image.asset(
            imageUrl,
            height: 400.h,
            //width: 336.h,
          ),

        ],
      ),
    );
  }
}