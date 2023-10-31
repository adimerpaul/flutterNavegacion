import 'package:flutter/material.dart';
import 'package:navegacion/pages/HomePage.dart';
import 'package:navegacion/pages/LogoutPage.dart';
import 'package:navegacion/pages/ProfilePage.dart';
import 'package:navegacion/pages/SettingsPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0; // Variable para controlar la página actual
  List<Widget> _children = [
    // Lista de páginas
    const HomePage(),
    const ProfilePage(),
    const SettingsPage(),
    const LogoutPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Con Navegacion')),
      body: _children[_currentIndex], // Muestra la página actual
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Usa este tipo
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue, // Cambia el color aquí
      ),
    );
  }
}
