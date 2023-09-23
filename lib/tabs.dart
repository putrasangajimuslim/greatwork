import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:greatwork/homepage.dart';
import 'package:greatwork/schedule.dart';
import 'package:greatwork/profile.dart'; // Import the ProfilePage

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    HomePage(),
    SchedulePage(),
    ProfilePage(), // Add the ProfilePage to the tabs
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            selectedIndex: _currentIndex,
            tabBackgroundColor: Color(0xFF166684),
            color: Colors.black,
            activeColor: Colors.white,
            gap: 10,
            padding: EdgeInsets.all(16),
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.calendar_month,
                text: 'Schedule',
              ),
              GButton(
                icon: Icons.account_circle_outlined,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
      body: _tabs[_currentIndex],
    );
  }
}
