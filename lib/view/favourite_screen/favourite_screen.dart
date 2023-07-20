import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/constants/colors/colors.dart';
import 'package:food_delivery_app/view/home_screen/widget/btm_nav_bar_widget.dart';
import 'package:food_delivery_app/view/order_screen/order_screen.dart';
import 'package:get/get.dart';

import '../../constants/colors/gradients.dart';
import '../../constants/images/imges.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appLoginScreenColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  // --Back Arrow Icon Container
                  GestureDetector(
                    onTap: (){
                      Get.to(BtmNavBar());
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
                  // --Custom AppBAr Title
                  const Text('Favourites', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),)
                ],
              ),
            ),
             SizedBox(height: 40.h,),
            GestureDetector(
              onTap: (){
                Get.to(OrderScreen());
              },
              child: Container(
                width: 315.w,
                height: 102.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.asset(appPizzaImage6),
                    title: const Text('Pizza La Ren', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                    subtitle: const Text('1300 drams',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: appMAinColor),),
                    trailing: Icon(Icons.close, color: appMAinColor, size: 24.r,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h,),
            Container(
              width: 315.w,
              height: 102.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset(appPizzaImage6),
                  title: const Text('Pizza Margherita ', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                  subtitle: const Text('1100 drams',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: appMAinColor),),
                  trailing: Icon(Icons.close, color: appMAinColor, size: 24.r,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
