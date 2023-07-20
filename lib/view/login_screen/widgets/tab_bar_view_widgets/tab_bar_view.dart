import 'package:flutter/material.dart';
import 'package:food_delivery_app/view/login_screen/widgets/tab_bar_view_widgets/tab_bar_login_widget.dart';
import 'package:food_delivery_app/view/login_screen/widgets/tab_bar_view_widgets/tab_bar_register_widget.dart';

import '../../../../constants/colors/colors.dart';

class TabBArView extends StatelessWidget {
  const TabBArView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TabBarView(children: [
      TabBArLoginWidget(),
      TAbBarRegisterWidget(),
    ]);
  }
}



