import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/constants/images/imges.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/colors/colors.dart';
import '../../detail_screen/product_details.dart';

class LunchesTabWidget extends StatelessWidget {
   LunchesTabWidget({
    super.key,
  });

  final List imageList =[
    appFoodImage10,
    appFoodImage11,
    appFoodImage12
  ];
  final List titleList =[
    'Business\nLunch #1',
    'Business\nLunch #2',
    'Business\nLunch #3',
  ];
  final List priceList =[
    '900 drams',
    '500 drams',
    '300 drams',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        // --Card
        Container(
          height: 330,
          color: Colors.transparent,
          child: ListView.builder(
            clipBehavior: Clip.none,
            physics: const BouncingScrollPhysics(),
            itemCount: imageList.length,
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10, bottom: 10, left: 30),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Material(
                          color: Colors.transparent,
                          child: GestureDetector(
                            onTap: (){
                              Get.to(ProductDetail(
                                  image: imageList[index],
                                  title: titleList[index],
                                  price: priceList[index]));
                            },
                            child: Container(
                              width: 220.h,
                              height: 260.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 60,
                                      color: const Color(0xff393939).withOpacity(.10),
                                      offset: const Offset(0, 30)
                                  )
                                ],
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 110.h,),
                                  Text(titleList[index],
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.black,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.sp,
                                    ),),
                                  const SizedBox(height: 30,),
                                  Text(priceList[index],
                                    style: TextStyle(color: appMAinColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.sp),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 170,
                        left: (220.h - 164.h) / 2, // Center the image horizontally within the container
                        child:
                        Container(
                          height: 164.h,
                          width: 164.h,
                          decoration:  BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 40.r,
                                offset: Offset(0, 30.r),
                                color: const Color(0xff000000).withOpacity(0.4.r),
                              )
                            ]
                            //color: Colors.white
                          ),
                          child: Image.asset(
                            imageList[index],
                            height: 164.h,
                            width: 164.h,
                            //fit: BoxFit.fill,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 60,),

        // --Button
        SizedBox(
          height: 50.h,
          width: 224.w,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.h)),
                backgroundColor: appMAinColor,
                elevation: 0,
              ),
              onPressed: (){}, child: const Text('More',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ),
      ],
    );
  }
}
