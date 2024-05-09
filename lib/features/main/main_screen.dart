import 'package:clothing/assets/images/products/profile_screen.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';

import '../bag/bag_screen.dart';
import '../../core/themes/colors.dart';
import '../favourites/favourits_screen.dart';
import '../home/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

int currentIndex = 0;
List<Widget> widgets = [
  HomeScreen(),
  FavoritesScreen(),
  BagScreen(),
  ProfileScreen()
];

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[currentIndex],
      bottomNavigationBar: FlashyTabBar(
          selectedIndex: currentIndex,
          animationDuration: Duration(milliseconds: 500),
          iconSize: 23,
          showElevation: false,
          items: [
            FlashyTabBarItem(
                activeColor: AppColors.mainColor,
                inactiveColor: Colors.black,
                icon: Icon(IconBroken.Home),
                title: Text(
                  'Home',
                )),
            FlashyTabBarItem(
                activeColor: AppColors.mainColor,
                inactiveColor: Colors.black,
                icon: Icon(IconBroken.Heart),
                title: const Text('Favorites')),
            FlashyTabBarItem(
                activeColor: AppColors.mainColor,
                inactiveColor: Colors.black,
                icon: Icon(IconBroken.Bag),
                title: Text('Bag')),
            FlashyTabBarItem(
                activeColor: AppColors.mainColor,
                inactiveColor: Colors.black,
                icon: Icon(IconBroken.Profile),
                title: Text('Profile')),
          ],
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          }),
    );
  }
}
