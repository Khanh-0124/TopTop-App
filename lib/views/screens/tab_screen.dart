import 'package:flutter/material.dart';
import 'package:toptop_app/views/screens/message_screen.dart';
import 'package:toptop_app/views/screens/profile_screen.dart';
import 'package:toptop_app/views/screens/video_screen.dart';

import '../../constants.dart';
import '../widgets/custom_add_icon.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _screenIndex = 0;

  List screens = [
    const VideoScreen(),
    const Center(
      child: Text('haha1'),
    ),
    const Center(
      child: Text('haha12'),
    ),
    const MessageScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _screenIndex == 0 ? CustomColors.black : null,
      body: screens[_screenIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 26,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: CustomAddIcon(
              iconData: Icons.add,
              primaryColor:
                  _screenIndex == 0 ? CustomColors.white : CustomColors.black,
              accentColor:
                  _screenIndex == 0 ? CustomColors.black : CustomColors.white,
            ),
            label: 'Post',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Me',
          ),
        ],
        currentIndex: _screenIndex,
        onTap: (newIndex) {
          setState(() {
            _screenIndex = newIndex;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor:
            _screenIndex == 0 ? CustomColors.black : CustomColors.white,
        selectedItemColor:
            _screenIndex == 0 ? CustomColors.white : CustomColors.black,
        unselectedItemColor: CustomColors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
      ),
    );
  }
}
