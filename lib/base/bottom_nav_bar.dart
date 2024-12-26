
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottom_nav_bar extends StatefulWidget {
  const bottom_nav_bar({super.key});

  @override
  State<bottom_nav_bar> createState() => _bottom_nav_barState();
}

class _bottom_nav_barState extends State<bottom_nav_bar> {

  final appScreens = [
    Text("Home"),
    Text("Search"),
    Text("Tickets"),
    Text("Account")
  ];
  var _selectedTab = 0;
  void _selectTab(int i){
    setState(() {
      _selectedTab = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("My Tickets")),
      ),
      body: Center(child: appScreens[_selectedTab]),
      bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.amber, items:
      [
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), label: "Home", backgroundColor: Colors.blueAccent,
        activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled)),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular), label: "Search", activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled)),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular), label: "Tickets", activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled)),
        BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), label: "Profile", activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled)),
      ],
        showSelectedLabels: false,
        onTap: _selectTab,
        currentIndex: _selectedTab,
      ),
    );
  }
}
