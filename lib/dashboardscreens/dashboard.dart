import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:etiqh/dashboardscreens/profile/profile.dart';
import 'package:etiqh/dashboardscreens/report/reports.dart';
import 'package:etiqh/theme/theme.dart';
import 'home/homescreen.dart';
import 'logout/LogoutPage.dart';
import 'sync/sync.dart';

class Userdashboard extends StatefulWidget {
  @override
  _UserdashboardState createState() => _UserdashboardState();
}

class _UserdashboardState extends State<Userdashboard> {
  @override
  PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          onPageChanged: onPageChanged,
          children: <Widget>[
            homescreen(),
            Reports(),
            MyHomePage(),
            sync(),
            logout(),
            // Userdashboard(),
          ],
        ),
        bottomNavigationBar: FFNavigationBar(
            theme: FFNavigationBarTheme(
              barBackgroundColor: Colors.white,
              selectedItemBorderColor: Colors.white,
              selectedItemBackgroundColor: Colors.white,
              selectedItemIconColor: Colors.white,
              selectedItemLabelColor: Colors.black,
              showSelectedItemShadow: true,
              barHeight: 60,
            ),
            selectedIndex: _page,
            onSelectTab: navigationTapped,
            items: [
              FFNavigationBarItem(
                iconData: Icons.home,
                label: 'Home',
                selectedBackgroundColor: MyColors.primaryColor,
              ),
              FFNavigationBarItem(
                iconData: Icons.report,
                label: 'Reports',
                selectedBackgroundColor: MyColors.primaryColor,
              ),
              FFNavigationBarItem(
                iconData: Icons.perm_identity,
                label: 'Profile',
                selectedBackgroundColor: MyColors.primaryColor,
              ),
              FFNavigationBarItem(
                iconData: Icons.sync,
                label: 'Sync',
                selectedBackgroundColor: MyColors.primaryColor,
              ),
              FFNavigationBarItem(
                iconData: Icons.logout,
                label: 'Logout',
                selectedBackgroundColor: MyColors.primaryColor,
              ),
              //       onTap: navigationTapped,
              // currentIndex: _page,
            ]),
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}
