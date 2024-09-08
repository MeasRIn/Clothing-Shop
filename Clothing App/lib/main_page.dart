import 'package:flutter/material.dart';
import 'package:flutter_application_1/Notification.dart';
import 'package:flutter_application_1/favorite.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/store.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pageWidgets = [
    HomePage(),
    Favorite(),
    NotificationScreen(),
    StoreScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pageWidgets[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 253, 199, 129)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border,
                color: Color.fromARGB(255, 253, 199, 129)),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,
                color: Color.fromARGB(255, 253, 199, 129)),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout,
                color: Color.fromARGB(255, 253, 199, 129)),
            label: "Store",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromARGB(255, 253, 199, 129)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        backgroundColor: const Color.fromARGB(255, 231, 184, 140),
        onTap: _onItemTapped,
      ),
    );
  }
}
