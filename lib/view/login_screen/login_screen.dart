import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors/colors.dart';
import 'package:food_delivery_app/constants/images/imges.dart';
import 'package:food_delivery_app/view/login_screen/widgets/tab_bar_view_widgets/tab_bar_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xfff2f2f2),
          body: Column(
            children: [
              /// --TAb Bar
              ClipRRect(
                   borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
                child: Container(
                  height: 220,
                  width: double.infinity,
                  decoration:  const BoxDecoration(
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 30,
                        offset: Offset(0, 4),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      Image.asset(appLogo, height: 132,),
                      const SizedBox(height: 20,),
                      const TabBar(
                        indicatorColor: appMAinColor,
                        unselectedLabelColor: appLoginScreenRegisterBtnClr,
                        labelColor: Colors.black,
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 30),
                        tabs: [
                          Tab(text: 'Login'),
                          Tab(text: 'Register'),
                        ],),
                    ],
                  ),
                ),
              ),

              /// --TAb Bar View
              const Expanded(
                child:
                TabBArView(),
              )
            ],
          ),
        ),
      ),
    );
  }
}


