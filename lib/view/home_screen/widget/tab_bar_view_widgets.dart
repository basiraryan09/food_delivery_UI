import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/home_screen/widget/soups_tab_widget.dart';

import 'drinks_tab_widget.dart';
import 'food_tab_widget.dart';
import 'lunches_tab_widget.dart';

class TabBarViews extends StatelessWidget {
   const TabBarViews({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return   TabBarView(children: [
      // --Food Tab
      FoodTabWidget(),
      // --Drinks Tab
      DrinksTabWidget(),
      // --Lunches Tab
      LunchesTabWidget(),
      // --Soups Tab
      SoupsTabWidget()
    ]);
  }
}




