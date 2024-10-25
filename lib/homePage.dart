
import 'package:first_project/contentPage.dart';
import 'package:first_project/listPage.dart';
import 'package:first_project/loginPage.dart';
import 'package:first_project/api/shopPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget>pages = [LikePage(),Listpage(),LikePage()];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed:(){
          Navigator.of(context).pop();
      },
          icon: Icon(
              Icons.arrow_back_ios,
            color: Colors.black,
          ),
      ),
      ),
bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Colors.blue,
  currentIndex: _selectedIndex,
  onTap: _onItemTapped,
  type: BottomNavigationBarType.fixed,
  items:const <BottomNavigationBarItem> [
    BottomNavigationBarItem(
        icon: Icon(Icons.home),
      label: 'الرئيسية',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'حسابي',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'البحث',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: 'للسلة',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.menu),
      label: 'القائمة',
    ),
  ],
),
      body:  pages[_selectedIndex],
    );
  }
}
