import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:rentit/stack/main_screens/tab_screens/tab_home.dart';
import 'package:rentit/stack/main_screens/tab_screens/tab_list.dart';
import 'package:rentit/stack/main_screens/tab_screens/tab_profile.dart';

class RentIt extends StatefulWidget {
  const RentIt({super.key});

  @override
  State<RentIt> createState() => _RentItState();
}

class _RentItState extends State<RentIt> {
  List<Widget> _list = [TabHome(), TabList(), TabProfile()];
  List<Map> _screens = [
    {"name": "Home", "icon": Icons.home},
    {"name": "Search", "icon": Icons.search},
    {"name": "Profile", "icon": Icons.person}
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RentIt"),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: _list,
      ),
      bottomNavigationBar: FlashyTabBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        
          selectedIndex: selectedIndex,
          items: _screens.map((ele) {
            return FlashyTabBarItem(
              inactiveColor: Theme.of(context).colorScheme.onSurfaceVariant,
              activeColor: Theme.of(context).colorScheme.surfaceTint,
                icon: Icon(ele["icon"]), title: Text(ele["name"]));
          }).toList(),
          onItemSelected: (e) {
            setState(() {
              selectedIndex = e;
            });
          }),
    );
  }
}
