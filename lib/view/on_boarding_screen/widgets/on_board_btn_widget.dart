import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/colors/colors.dart';
import '../../login_screen/login_screen.dart';

class OnBoardButton extends StatelessWidget {
  const OnBoardButton({
    super.key,
    required int currentPageIndex,
    required List<Widget> pages,
    required PageController pageController,
  }) : _currentPageIndex = currentPageIndex, _pages = pages, _pageController = pageController;

  final int _currentPageIndex;
  final List<Widget> _pages;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 50.h,
      right: 50.h,
      bottom: 30.h,
      child: SizedBox(
        height: 70.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: appOnBoardBtnColor,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))
          ),
          onPressed: () {
            if (_currentPageIndex < _pages.length - 1) {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            } else {
              Get.offAll(const LoginScreen());
              // Handle button action when on the last page
              // For example, navigate to the next screen or perform some action
            }
          },
          child:  Text(
            _currentPageIndex == _pages.length - 1 ? 'Next' : 'Further',
            style: const TextStyle(fontSize: 16.0, color: appMAinColor,
            fontFamily: 'Gilroy'
            ),
          ),
        ),
      ),
    );
  }
}