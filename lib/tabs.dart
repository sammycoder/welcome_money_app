import 'package:flutter/material.dart';
import './pages/expenses.dart';
import './pages/reports.dart';
import './pages/add.dart';
import './pages/settings.dart';
import '../types/widgets.dart';

class TabsController extends StatefulWidget {
  const TabsController({super.key});

  @override
  State<TabsController> createState() => _TabsControllerState();
}

class _TabsControllerState extends State<TabsController> {
  var _selectedIndex = 0;

  static const List<WidgetWithTitle> _pages = [
    Expenses(),
    Reports(),
    Add(),
    Settings(),
  ];

  void _onItemlapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedIndex].title),
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
      ),
      backgroundColor: Color.fromARGB(0, 0, 0, 0),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.paid),
            label: 'Expenses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemlapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 206, 255, 206),
        unselectedItemColor: Color.fromARGB(255, 94, 94, 94),
      ),
    );
  }
}
