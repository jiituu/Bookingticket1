import 'package:ticket_booking_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ionicons/ionicons.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile")
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          elevation: 10,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526478),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline),
                activeIcon: Icon(Ionicons.home_sharp),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.search_outline),
                activeIcon: Icon(Ionicons.search_circle_sharp),
                label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.ticket_outline),
                activeIcon: Icon(Ionicons.ticket_sharp),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline),
                activeIcon: Icon(Ionicons.person_sharp),
                label: "profile")
          ]),
    );
  }
}
