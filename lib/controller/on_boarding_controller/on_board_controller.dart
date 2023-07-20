

import 'package:get/get.dart';

import '../../constants/images/imges.dart';
import '../../constants/text/text_const.dart';
import '../../view/on_boarding_screen/on_boarding_pages.dart';

class OnBoardingController extends GetxController{
  int _currentPageIndex = 0;
  final RxList _pages = [
    OnboardingPage(
      imageUrl: appOnBoardImg1,
      title: appOnBoardHeading1,
    ),
    OnboardingPage(
      imageUrl: appOnBoardImg2,
      title: appOnBoardHeading2,
    ),
    OnboardingPage(
      imageUrl: appOnBoardImg3,
      title: appOnBoardHeading3,
    ),
    OnboardingPage(
      imageUrl: appOnBoardImg4,
      title: appOnBoardHeading4,
    ),
    OnboardingPage(
      imageUrl: appOnBoardImg5,
      title: appOnBoardHeading5,
    ),
    OnboardingPage(
      imageUrl: appOnBoardImg6,
      title: appOnBoardHeading6, )
  ].obs;



}