import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:interview/view/screens/home_screen.dart';
import 'package:interview/view/widget/custom_text.dart';

import '../view_model/utils/constants.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;

  final List<Widget> _screens = [
    HomeScreen(),
    Center(child: Text('Search')),
    Center(child: Text("analyse's")),
    Center(child: Text('Profile')),
    Center(child: Text('Settings')),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
                title: Center(
                    child: CustomText(
              text: 'مرحبا بكم',
              fontSize: 15,
              color: colorBlack,
            ))),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: GNav(
          gap: 7,
          activeColor: mainColor,
          color: Colors.grey[600],
          tabBackgroundColor: backgroundMainColor,
          padding: EdgeInsets.symmetric(horizontal: 13, vertical: 12),
          tabs: [
            GButton(
              icon: Icons.circle,
              iconSize: 0,
              text: 'Home',
              textSize: 12,
              leading: SvgPicture.asset(
                "assets/icons/home.svg",
              ),
            ),
            GButton(
                leading: SvgPicture.asset(
                  "assets/icons/search.svg",
                ),
                icon: Icons.circle,
                iconSize: 0,
                text: 'Search'),
            GButton(
                leading: SvgPicture.asset(
                  "assets/icons/anlys.svg",
                ),
                icon: Icons.circle,
                iconSize: 0,
                text: 'analyse'),
            GButton(
                leading: SvgPicture.asset(
                  "assets/icons/clock.svg",
                ),
                icon: Icons.circle,
                iconSize: 0,
                text: 'Time'),
            GButton(
                leading: SvgPicture.asset(
                  "assets/icons/profile.svg",
                ),
                icon: Icons.circle,
                iconSize: 0,
                text: 'account'),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
