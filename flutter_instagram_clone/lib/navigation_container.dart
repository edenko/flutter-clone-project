import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/pages/explore_page.dart';
import 'package:flutter_instagram_clone/pages/home_page.dart';
import 'package:flutter_instagram_clone/pages/profile_page.dart';
import 'package:flutter_instagram_clone/pages/reels_page.dart';
import 'package:flutter_instagram_clone/pages/shop_page.dart';
import 'package:flutter_instagram_clone/widgets/custom_bottom_nav_bar.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({Key? key}) : super(key: key);

  @override
  _NavigationContainerState createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedPageIndex = 0;

  static const List<Widget> _appPages = [
    HomePage(),
    ExplorePage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage(),
  ];

  void _onIconTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _appPages[_selectedPageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedPageIndex: _selectedPageIndex, 
        onIconTap: _onIconTapped,
      ),
    );
  }
}
