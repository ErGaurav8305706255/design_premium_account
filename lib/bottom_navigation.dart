import 'package:design_premium_account/constant/color_constant.dart';
import 'package:design_premium_account/profile_screen.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';
import 'home_screen.dart';
import 'motivational_screen.dart';
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  int _selectedIndex = 0;
  static List<Widget> _WidgetOption = <Widget>[
    HomeScreen(),
    ChatScreen(),
    MotivationalScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _WidgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.assistant_direction),
            label: '',
            backgroundColor: ColorConstant.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.wechat),
              label: '',
              backgroundColor: ColorConstant.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.thumb_up),
              label: '',
              backgroundColor: ColorConstant.white
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
              backgroundColor: ColorConstant.white
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorConstant.button_color,
        unselectedItemColor: ColorConstant.gray,
        onTap: _onItemTapped,
      ),
    );
  }
}
