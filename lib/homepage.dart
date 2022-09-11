import 'package:flutter/material.dart';
import 'package:intern_us/screens/details/details.dart';
import './screens/home/home.dart';

import './screens/profile/profile.dart';



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navBottom(int index){
    setState(() {
      _selectedIndex = index;
      
    });
  }

  final List<Widget>_pages =[
    Home(),
  
    Profile(),

  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[_selectedIndex]
  ,
 bottomNavigationBar: BottomNavigationBar(
  onTap: _navBottom,
  currentIndex: _selectedIndex,
  
  items: [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
   BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
 
 ]),
    );
  }
}