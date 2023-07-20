import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/constants/text/text_const.dart';
import 'package:food_delivery_app/view/home_screen/home_screen.dart';
import 'package:food_delivery_app/view/home_screen/widget/btm_nav_bar_widget.dart';
import 'package:get/get.dart';

import '../../../../constants/colors/colors.dart';

class TabBArLoginWidget extends StatelessWidget {
  const TabBArLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: appLoginScreenColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 120,),
              // --Email Text Field
              const TextField(
                cursorColor: appMAinColor,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: appMAinColor)),
                  border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                  label: Text(appEmailText),
                  hintStyle: TextStyle(color: Colors.black),
                  suffixStyle: TextStyle(color: Colors.black),
                  contentPadding: EdgeInsets.all(10),
                  labelStyle: TextStyle(color: Colors.black38),
                ),
              ),
              SizedBox(height: 30.h,),
              // --Password Text Field
              const TextField(
                cursorColor: appMAinColor,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: appMAinColor)),
                  border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                  label: Text(appPasswordText),
                  contentPadding: EdgeInsets.all(10),
                  labelStyle: TextStyle(color: Colors.black38),
                ),
              ),
              const SizedBox(height: 20,),
              // --Restore Password Text
              const Text(appForgetPasswordText, style: TextStyle(color: appMAinColor),),
              SizedBox(height: 130.h,),
              // --Enter Button
              Center(
                child: SizedBox(
                  width: 314.h,
                  height: 70.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appMAinColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
                      ),
                      onPressed: (){
                        Get.to( BtmNavBar());
                      }, child: const Text(appEnterBtnText, style: TextStyle(color: appEnterTecxtColor),)),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}