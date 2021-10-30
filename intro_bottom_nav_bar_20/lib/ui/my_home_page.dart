import 'package:flutter/material.dart';
import 'package:intro_bottom_nav_bar_20/ui/account.dart';
import 'package:intro_bottom_nav_bar_20/ui/home.dart';
import 'package:intro_bottom_nav_bar_20/ui/search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   int _selectedIndex = 1;
    void _onTabFunc(int index) {
    
    setState(() {
       _selectedIndex = index;
    });
     
    }

    List<Widget> widgetOption = <Widget>[
      HomeView(),
       SearchView(),
      AccountView(),
    ];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
      ),
      body: widgetOption.elementAt(_selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onTabFunc,
        backgroundColor: Colors.amber.shade200,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_tree_sharp), label: 'User'),
        ],
      ),
    );
  }
}
