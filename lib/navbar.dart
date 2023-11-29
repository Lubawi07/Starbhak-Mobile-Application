import 'package:flutter/material.dart';
import 'package:lubawi_projek_mobile/appbar.dart';
import 'package:lubawi_projek_mobile/catatan.dart';
import 'package:lubawi_projek_mobile/keranjang.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[ 
    Home(),
    keranjang(),
    catatan(),//pakai text dulu kalo bisa pindah2
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Keranjang',
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: 'Catatan',
            icon: Icon(Icons.note_add),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
     ),
  );
  }
}