import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/colors/colors.dart';
import '../constants/colors/gradients.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              Get.back();
            },
            child: Container(
              padding: EdgeInsets.only(left: 12.h),
              height: 46.h,
              width: 46.w,
              decoration: const BoxDecoration(
                  gradient: AppGradients.bottomRightTopLeft,
                  shape: BoxShape.circle
              ),
              child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 24.h,weight: 24.w,),
            ),
          ),
         SizedBox(width: 90.w,),
         // const Icon(Icons.favorite_border_outlined, color: appMAinColor,)
          Text('Order Page', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}
