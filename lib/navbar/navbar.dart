import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wallpaper_app/screens/category_screen.dart';
import 'package:wallpaper_app/screens/favorite_screen.dart';
import 'package:wallpaper_app/screens/home_screen.dart';
import 'package:wallpaper_app/screens/settings_screen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    CategoryScreen(),
    FavoriteScreen(),
    SettingsScreen(),
  ];

  void _onSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: Container(
        color: Color(0xffF9F9F9),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: GNav(
            haptic: false,
            onTabChange: _onSelected,
            selectedIndex: _selectedIndex,
            backgroundColor: Color(0xffF9F9F9),
            iconSize: 24,
            color: Color(0xffA8A8A8),
            padding: EdgeInsets.all(18),
            activeColor: Color(0xff292D32),
            tabBackgroundColor: Color(0xffA8A8A8),
            gap: 8,
            tabs: [
              GButton(icon: Icons.home_rounded, text: 'Home'),
              GButton(icon: Icons.dashboard_rounded, text: 'Category'),
              GButton(icon: Icons.favorite_rounded, text: 'Favorites'),
              GButton(icon: Icons.settings, text: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}
