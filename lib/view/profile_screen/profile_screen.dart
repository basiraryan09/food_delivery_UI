import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/constants/images/imges.dart';

import '../../constants/colors/colors.dart';
import '../../constants/colors/gradients.dart';
import '../../constants/text/text_const.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appLoginScreenColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                // --Arrow Button
                Container(
                  padding: EdgeInsets.only(left: 12.h),
                  height: 46.h,
                  width: 46.w,
                  decoration: const BoxDecoration(
                      gradient: AppGradients.bottomRightTopLeft,
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 24.h,weight: 24.w,),
                ),
                SizedBox(height: 30.h,),
                const Text('My Profile', style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(height: 20.h,),
                // --Profile Image
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 183.w,
                    height: 197.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(appProfileImage),
                  ),
                ),
                SizedBox(height: 20.h,),
                // --Email Text Field
                const TextField(
                  cursorColor: appMAinColor,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: appMAinColor)),
                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                    label: Text(appEmailText),
                    hintStyle: TextStyle(color: Colors.black),
                    suffixStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.all(10),
                    labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 30.h,),
                // --Family Name TextField
                 const TextField(
                  cursorColor: appMAinColor,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(

                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: appMAinColor)),
                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                    label: Text('Family Name'),
                    contentPadding: EdgeInsets.all(10),
                    labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 30.h,),
                // --Address field
                const TextField(
                  textInputAction: TextInputAction.done,
                  cursorColor: appMAinColor,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: appMAinColor)),
                    border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                    label: Text('Address'),
                    contentPadding: EdgeInsets.all(10),
                    labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 50.h,),
                // --Save Button
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
                        }, child: const Text('Save', style: TextStyle(color: appEnterTecxtColor),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
