import 'package:flutter/material.dart';
import 'package:covid19sl/screens/dashboard.dart';
import 'package:covid19sl/screens/map.dart';
import 'package:covid19sl/screens/preventionpage.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  int _currentindex;

  @override
  void initState() {
    _currentindex = 0;
    super.initState();
  }

  void changePage(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  List<Widget> tabs = [
    DashboardPage(),
    MapPage(),
    PreventionPage()
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: tabs.elementAt(_currentindex),

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Dashboard'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('Map'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              title: Text('Prevention'),
            ),
          ],
          currentIndex: _currentindex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          onTap: changePage,
          showUnselectedLabels: false,
          showSelectedLabels: false,
        ),
      
    );
  }
}