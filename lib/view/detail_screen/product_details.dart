import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/constants/colors/colors.dart';
import 'package:get/get.dart';
import '../../constants/colors/gradients.dart';
import '../../constants/text/text_const.dart';

class ProductDetail extends StatelessWidget {
   ProductDetail({Key? key, required this.image, required this.title, required this.price,}) : super(key: key);
  final String image;
  final String title;
  final String price;

   final List descriptionList = [
     descriptionSalad,
     descriptionRice,
     descriptionSabzi,
   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              // --Custom App Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  const Icon(Icons.favorite_border_outlined, color: appMAinColor,)
                ],
              ),
              SizedBox(height: 20.h,),
              // --Hero Pic
              Center(
                child: SizedBox(
                  height: 252.h,
                  width: 343.w,
                  child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 40.r,
                            offset: Offset(0, 30.r),
                            color: const Color(0xff000000).withOpacity(0.4),
                          )
                        ]
                      ),
                      child: Image.asset(image)),
                ),
              ),
              SizedBox(height: 50.h,),
              // --Title
              Center(child: Text(title.replaceAll('\n', ' '), style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),)),
              SizedBox(height: 10.h,),
              // --Price Text
               Center(child: Text(price, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: appMAinColor),)),
              SizedBox(height: 40.h,),
              // --Product Information
              const Text('Product Information', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
              SizedBox(height: 10.h,),
              // --Details Text
               const Text('tomato sauce, mozzarella',style: TextStyle(fontSize: 15),),
              SizedBox(height: 100.h,),
              // --Add to Cart Button
              Center(
                child: SizedBox(
                  height: 70.h,
                  width: 314.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.h)),
                        backgroundColor: appMAinColor,
                        elevation: 0,
                      ),
                      onPressed: (){}, child: const Text('Add to Cart',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
