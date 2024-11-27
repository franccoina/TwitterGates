import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:twitter_gates/views/home_page.dart';
import 'package:twitter_gates/views/other_page.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _currentIndex = 0; 

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
    else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OtherPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      backgroundColor: Colors.black,
      currentIndex: _currentIndex,
      onTap: _onTap,
      items: [
        SalomonBottomBarItem(
          icon: const Icon(Icons.home),
          title: const Text(""),
          selectedColor: Colors.white,
          unselectedColor: Colors.grey,
        ),

        SalomonBottomBarItem(
          icon: const Icon(Icons.search),
          title: const Text(""),
          selectedColor: Colors.white,
          unselectedColor: Colors.grey,
        ),

        SalomonBottomBarItem(
          icon: const Icon(Icons.browser_not_supported),
          title: const Text(""),
          selectedColor: Colors.white,
          unselectedColor: Colors.grey,
        ),

        SalomonBottomBarItem(
          icon: const Icon(Icons.notifications_none_outlined),
          title: const Text(""),
          selectedColor: Colors.white,
          unselectedColor: Colors.grey,
        ),

        SalomonBottomBarItem(
          icon: const Icon(Icons.mail_outline),
          title: const Text(""),
          selectedColor: Colors.white,
          unselectedColor: Colors.grey,
        ),

        SalomonBottomBarItem(
          icon: const Icon(Icons.people_outline),
          title: const Text(""),
          selectedColor: Colors.white,
          unselectedColor: Colors.grey,
        ),
      ],
    );
  }
}


