import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/images/imges.dart';
import 'package:food_delivery_app/view/on_boarding_screen/widgets/on_board_btn_widget.dart';

import '../../constants/colors/gradients.dart';
import '../../constants/text/text_const.dart';
import 'on_boarding_pages.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int _currentPageIndex = 0;
  final List<Widget> _pages = [
    const OnboardingPage(
      imageUrl: appOnBoardImg1,
      title: appOnBoardHeading1,
    ),
    const OnboardingPage(
      imageUrl: appOnBoardImg2,
      title: appOnBoardHeading2,
    ),
    const OnboardingPage(
      imageUrl: appOnBoardImg3,
      title: appOnBoardHeading3,
    ),
    const OnboardingPage(
      imageUrl: appOnBoardImg4,
      title: appOnBoardHeading4,
    ),
    const OnboardingPage(
      imageUrl: appOnBoardImg5,
      title: appOnBoardHeading5,
    ),
    const OnboardingPage(
      imageUrl: appOnBoardImg6,
      title: appOnBoardHeading6, )
  ];



  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: Container(
              decoration: const BoxDecoration(
                gradient: AppGradients.bottomRightTopLeft
              ),
              child: PageView(
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                children: _pages,
              ),
            ),
          ),
          Image.asset(appVector, fit: BoxFit.fitHeight,),
          OnBoardButton(currentPageIndex: _currentPageIndex, pages: _pages, pageController: _pageController),
        ],
      ),
    );
  }
}




