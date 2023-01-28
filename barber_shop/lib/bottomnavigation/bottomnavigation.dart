import 'package:barber_shop/pages/appointment.dart';
import 'package:barber_shop/pages/home.dart';
import 'package:barber_shop/pages/nearby.dart';
import 'package:barber_shop/pages/profile.dart';
import 'package:flutter/material.dart';

class BottomNavigatorBar extends StatefulWidget {
  BottomNavigatorBar({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  int _currentindex = 0;
  final Screens = [Home(), Nearby(), Appointment(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color.fromARGB(255, 235, 80, 108),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_rounded),
            label: 'Nearby',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt_rounded),
            label: 'Appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
