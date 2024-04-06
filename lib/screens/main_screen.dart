import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/screens/add_aviz/add_aviz_screen.dart';
import 'package:aviz_application/screens/home_aviz_screen.dart';
import 'package:aviz_application/screens/my_aviz_screen.dart';
import 'package:aviz_application/screens/search_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _bottomNavigationCurrentIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavigationCurrentIndex,
        selectedItemColor: CustomColor.customRed,
        unselectedItemColor: Color(0xffD0D5DD),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            _bottomNavigationCurrentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: Image.asset("images/active_setting_icon.png"),
            icon: Image.asset("images/inactive_setting_icon.png"),
            label: "آویز من",
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset("images/active_add_icon.png"),
            icon: Image.asset("images/inactive_add_icon.png"),
            label: "افزودن آویز",
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset("images/active_search_icon.png"),
            icon: Image.asset("images/inactive_search_icon.png"),
            label: "جستجو",
          ),
          BottomNavigationBarItem(
            activeIcon: Image.asset("images/active_home_icon.png"),
            icon: Image.asset("images/inactive_home_icon.png"),
            label: "آویز آگهی ها",
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: IndexedStack(
        children: mainScreens,
        index: _bottomNavigationCurrentIndex,
      ),
    );
  }

  List<Widget> mainScreens = [
    MyAvizScreen(),
    AddAvizScreen(),
    SearchScreen(),
    HomeAvizScreen(),
  ];
}
