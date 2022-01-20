import 'package:flutter/material.dart';
import 'package:inventory_management/SettingsScreen.dart';
import 'package:inventory_management/purchase.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  int currentindex = 0;
  static const List<Widget> _widgetOptions=<Widget>
  [
     purchaseScreen(),
    SettingScreen()
  ];

  void _itemtapped(int index) {
    setState(() {
      currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions.elementAt(currentindex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: _itemtapped,
          selectedItemColor: Colors.red,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Purchase',
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
                backgroundColor: Colors.red
            )
          ],
        ),
      ),
    );
  }
}
