import 'package:flutter/material.dart';
import 'package:sausau/features/profile/presentation/screens/profile_view.dart';

import '../../../groups/presentation/screens/history_view.dart';
import '../../../wallet/presentation/screens/wallet_view.dart';
import 'home_view.dart';

class MainScreenWithNavBar extends StatefulWidget {
  const MainScreenWithNavBar({Key? key}) : super(key: key);

  @override
  State<MainScreenWithNavBar> createState() => _MainScreenWithNavBarState();
}

class _MainScreenWithNavBarState extends State<MainScreenWithNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    HistoryView(),
    WalletView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // This is all you need!

        // backgroundColor: ColorManager.primary,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined),
            label: 'e-Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
