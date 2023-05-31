import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_search_app/helpers/constants.dart';
import 'package:job_search_app/screens/favorites_screen.dart';
import 'package:job_search_app/screens/home_screen.dart';
import 'package:job_search_app/screens/profile_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  var _selectedIndex = 0;
  late PageController _pageController;
  List<Widget> navPages = [
    const HomeScreen(),
    const FavoritesScreen(),
    const ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          items: <Widget>[
            Icon(LineIcons.home, color: Constants.lightWhite),
            Icon(LineIcons.heart, color: Constants.lightWhite),
            Icon(LineIcons.user, color: Constants.lightWhite)
          ],
          onTap: onTabTapped,
          index: _selectedIndex,
          letIndexChange: (index) => true,
          color: Constants.primaryColor,
          buttonBackgroundColor: Constants.primaryColor,
          backgroundColor: Constants.lightWhite,
        ),
        body: PageView(
          onPageChanged: onPageChanged,
          controller: _pageController,
          children: navPages,
        ),
      ),
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
    );
  }

  void onPageChanged(int page) {
    setState(() {
      _selectedIndex = page;
    });
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
