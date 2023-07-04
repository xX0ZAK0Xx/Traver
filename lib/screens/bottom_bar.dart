import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traver/screens/home_screen.dart';
import 'package:traver/screens/search_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 1;
  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    const Text("Tickets"),
    const Text("Profile"),
  ];
  void _onItemTap(index) => setState(() {
    _selectedIndex = index;
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: _widgetOptions[_selectedIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black87,
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 20,
        onTap: _onItemTap,
        items: [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), label: "home", activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), label: "search", activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), label: "ticket", activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), label: "profile",activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)),
        ],
      )
    );
  }
}