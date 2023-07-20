import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/constants/colors/gradients.dart';
import 'package:food_delivery_app/constants/images/imges.dart';
import 'package:food_delivery_app/view/home_screen/widget/tab_bar_view_widgets.dart';

import '../../constants/colors/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      animationDuration: const Duration(milliseconds: 300),
      child: Scaffold(
        backgroundColor: appLoginScreenColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  // --TAb BAr
                  Column(
                    children: [
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 46.h,
                            width: 46.w,
                            decoration: const BoxDecoration(
                              gradient: AppGradients.bottomRightTopLeft,
                              shape: BoxShape.circle
                            ),
                            child: Center(child: Image.asset(appMenuIcon, height: 24.h,)),
                          ),
                          Container(
                            height: 46.h,
                            width: 46.w,
                            decoration: const BoxDecoration(
                              gradient: AppGradients.bottomRightTopLeft,
                              shape: BoxShape.circle
                            ),
                            child: Center(child: Image.asset(appCartIcon, height: 24.h, width: 24.w,)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40,),
                      Container(
                        width: 314.h,
                        height: 60.h,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: appSearchBArColor,
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: TextField(
                          textInputAction: TextInputAction.search,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: const Icon(Icons.search, color: Colors.black,),
                            hintText: 'Search',
                            hintStyle: TextStyle(color: const Color(0xff000000).withOpacity(0.3)),

                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const TabBar(
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 5),
                          unselectedLabelColor: appUnselectedLabelColor,
                          labelPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                          indicatorColor: appMAinColor,
                          labelColor: appMAinColor,
                          isScrollable: true,
                         // unselectedLabelStyle: TextStyle(color: appUnselectedLabelColor),
                          tabs: [
                            Text('Food',),
                            Text('Drinks',),
                            Text('Lunch', ),
                            Text('Soups', ),
                          ]),

                    ],
                  ),
                  // --TAbBAr View
                   SizedBox(
                    height: 520.h,
                    child: const TabBarViews(),
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


