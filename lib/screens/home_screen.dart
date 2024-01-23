import 'package:flutter/material.dart';
import 'package:zoom_clone/utils/colors.dart';
import 'package:zoom_clone/widgets/home_meeeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  get onPressed => null;
  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text('Meet & Char'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              HomeMeetingButton(
                onPressed: () {},
                text: 'New Meeting',
                icon: Icons.videocam,
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: onPageChanged,
          currentIndex: _page,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.comment_bank,
              ),
              label: 'Meet & Char',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.lock_clock,
              ),
              label: 'Meetings',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: 'Contacts',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
              ),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.comment_bank,
              ),
              label: 'Meet & Char',
            ),
          ]),
    );
  }
}
