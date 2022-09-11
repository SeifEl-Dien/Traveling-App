import 'package:flutter/material.dart';
import 'package:traveling_app/screens/categories_screen.dart';
import 'package:traveling_app/screens/favourite_screen.dart';
import 'package:traveling_app/widgets/app_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectscreen(int index) {
    setState(() {
      _selectedscreenindex = index;
    });
  }

  int _selectedscreenindex = 0;
  final List<Map<String, Object>> _screen = [
    {'Screen': Categoriesscreen(), 'Title': 'تصنيفات الرحلات'},
    {'Screen': Favouritescreen(), 'Title': 'الرحلات المفضلة'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screen[_selectedscreenindex]['Title'] as String),
      ),
      drawer: AppDrawer(),
      body: _screen[_selectedscreenindex]['Screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectscreen,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).colorScheme.secondary,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedscreenindex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard), label: 'التصنيفات'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'المفضلة'),
          ]),
    );
  }
}
