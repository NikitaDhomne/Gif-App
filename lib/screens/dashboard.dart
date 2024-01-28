import 'package:divine_gif/screens/home_screen.dart';
import 'package:divine_gif/screens/search_screen.dart';
import 'package:divine_gif/screens/stickers_screen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  List<Map<String, dynamic>> _pages = [];

  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreen(),
      },
      {
        'page': SearchScreen(query: "trending"),
      },
      {
        'page': StickersScreen(),
      },
    ];
    super.initState();
  }

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.gif_box), label: 'Stickers'),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: Color(0xffE9E9E9),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xffB7499D),
          unselectedItemColor: const Color(0xff000000),
          onTap: onTapped,
          elevation: 0,
        ));
  }
}
