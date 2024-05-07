import 'package:flutter/material.dart';

import 'competence.dart';
import 'experience.dart';
import 'formation.dart';
import 'info.dart';
import 'profil.dart';

class Device extends StatefulWidget {
  const Device({super.key});

  @override
  _DeviceState createState() => _DeviceState();
}

class _DeviceState extends State<Device> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Profil(),
    const Experience(),
    const Formation(),
    const Competence(),
    const Info(),
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
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'Expérience',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Formation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            label: 'Compétence',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'Info',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
