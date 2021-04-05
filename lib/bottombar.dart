
class BottomNavigatorPage extends StatefulWidget {
  @override
  _BottomNavigatorPageState createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    // HomePage(),
    // FoodPage(),
    // // ServicesPage(),
    // ParticularServiceViewAll(),
    // InfoPage(),
    // GenericProfile(),
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
        backgroundColor: kPrimaryColor,
        items: <BottomNavigationBarItem>[
          // BottomNavigationBarItem(
          //   icon: Image.asset(
          //     'assets/images/home (2).png',
          //   ),
          //   backgroundColor: kPrimaryColor,
          //   label: 'Home',
          // ),
          // BottomNavigationBarItem(
          //     icon: Image.asset(
          //       'assets/images/food (2).png',
          //     ),
          //     backgroundColor: kPrimaryColor,
          //     label: 'Food'),
          // BottomNavigationBarItem(
          //     icon: Image.asset(
          //       'assets/images/service.png',
          //     ),
          //     backgroundColor: kPrimaryColor,
          //     label: 'Services'),
          // BottomNavigationBarItem(
          //     icon: Image.asset(
          //       'assets/images/wiki.png',
          //       height: 24,
          //     ),

          //     backgroundColor: kPrimaryColor,
          //     label: 'Wiki'),
          // BottomNavigationBarItem(
          //     icon: Image.asset(
          //       'assets/images/pets.png',
          //     ),
          //     backgroundColor: kPrimaryColor,
          //     label: 'Pet Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedFontSize: 10,
        onTap: _onItemTapped,
        
      ),
    );
  }
}
