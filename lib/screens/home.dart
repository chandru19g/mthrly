import 'package:flutter/material.dart';
import 'package:mothrly/screens/parent_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    ParentHome(),
    Text("Index 1: Home"),
    Text("Index 2: Home"),
    Text("Index 2: Home"),
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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_sharp),
              label: "",
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromRGBO(242, 107, 147, 1),
          unselectedItemColor: Colors.grey,
          iconSize: 30.0,
          onTap: _onItemTapped,
          elevation: 10.0,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
