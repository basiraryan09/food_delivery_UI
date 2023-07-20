import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors/colors.dart';
import 'package:food_delivery_app/view/favourite_screen/favourite_screen.dart';
import 'package:food_delivery_app/view/home_screen/home_screen.dart';
import 'package:food_delivery_app/view/profile_screen/profile_screen.dart';

class BtmNavBar extends StatefulWidget {
   const BtmNavBar({Key? key}) : super(key: key);


  @override
  State<BtmNavBar> createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {

  // --Screens
  static final List<Widget> _screenList = <Widget>[
    const HomeScreen(),
    const FavouriteScreen(),
    const ProfileScreen()
  ];

  // --isSelected Method
  int isSelected = 0;
  void onTapItem(int index){
    setState(() {
      isSelected = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screenList.elementAt(isSelected),
      ),
      bottomNavigationBar: Container(
        color: appLoginScreenColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: BottomNavigationBar(
            onTap: onTapItem,
            currentIndex: isSelected,
            selectedIconTheme: const IconThemeData(
              color: appMAinColor,
              shadows: [
                Shadow(
                    blurRadius: 40,
                    offset: Offset(0, 6),
                    color: appMAinColor
                )
              ]
            ),
            backgroundColor: appLoginScreenColor,
            elevation: 0,
            unselectedItemColor: appMAinColor,
            selectedItemColor: appMAinColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 24,
            items: const [
             BottomNavigationBarItem(
                 icon: Icon(Icons.home_outlined),label: 'akh',
               activeIcon: Icon(Icons.home)
             ),
             BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: 'Favourite',
             activeIcon: Icon(Icons.favorite)
             ),
             BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: 'Person',
             activeIcon: Icon(Icons.person)),
            ],
          ),
        ),
      ),
    );
  }
}
