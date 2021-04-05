import 'package:datingapp2/main.dart';
import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatefulWidget {
  @override
  _BottomNavigatorPageState createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    MyHomePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      // body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: kPrimaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add,color: Colors.black,),
            // backgroundColor: kPrimaryColor,
            label: 'Home',
          ),
          BottomNavigationBarItem(
             icon: Icon(Icons.add,color: Colors.black,),
              backgroundColor: Colors.blue,
              label: 'Food'),
          BottomNavigationBarItem(
             icon: Icon(Icons.add,color: Colors.black,),
              // backgroundColor: kPrimaryColor,
              label: 'Services'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add,color: Colors.black,),

              // backgroundColor: kPrimaryColor,
              label: 'Wiki'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add,color: Colors.black,),
              label: 'Pet Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedFontSize: 10,
        onTap: _onItemTapped,
        
      ),
    );
  }
}
