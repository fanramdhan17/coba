import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final List<String> _pageTitles = [
    '',
    '',
    '',
  ];

  final List<Widget> _pages = [
    Container(
      child: const Align(
        alignment: Alignment.topLeft,
        child: Text('Home Page', style: TextStyle(fontSize: 24.0)),
      ),
    ),
    Container(
      child: const Center(
        child: Text('Email Page', style: TextStyle(fontSize: 24.0)),
      ),
    ),
    Container(
      child: const Center(
        child: Text('Profile Page', style: TextStyle(fontSize: 24.0)),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      _updatePage();
    });
  }

  void _updatePage() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '1302204038 - Luthfan Ramdhan Wahyudi',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: _pages[_currentIndex],
              ),
              Text(
                _pageTitles[_currentIndex],
                style: const TextStyle(fontSize: 24.0),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 236, 163, 6),
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.email),
              label: 'Email',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor: const Color.fromARGB(255, 6, 120, 228), 
          unselectedItemColor: const Color.fromARGB(255, 20, 158, 87),
        ),
      ),
    );
  }
}
