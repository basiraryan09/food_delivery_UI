import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, this.onPressed, required this.textColor}) : super(key: key);

  final String text;
  final VoidCallback? onPressed;
  //final Color btnColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SizedBox(
        width: 314.h,
        height: 70.h,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                //elevation: 0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
            ),
            onPressed: onPressed
            , child:  Text(text, style:  TextStyle(color: textColor),)),
      ),
    );
  }
}
