import 'package:flutter/material.dart';

import 'package:pett_peaces/fetures/home/presention/view/widget/homeviewbody.dart';

import 'package:pett_peaces/fetures/se3rviecs/presention/view/services.dart';

import 'package:pett_peaces/fetures/store/prention/view/store.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: const Color.fromARGB(255, 9, 9, 9),
              hoverColor: Colors.blue,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.blue.withOpacity(.9),
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: Icons.countertops,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.countertops,
                  text: 'Courses',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Calendar',
                ),
                GButton(
                  icon: Icons.account_tree_sharp,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                _onItemTapped(index);
              },
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          const HomeViewBody(),
          const Services(),
          const Store(),
          Container(),
        ],
      ),
    );
  }
}
