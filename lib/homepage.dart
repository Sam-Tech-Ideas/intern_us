import 'package:flutter/material.dart';
import './screens/home/home.dart';
import './screens/search/search.dart';
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
    Search(),
    Profile(),

  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
           child: Text(
            "Home",style: TextStyle(
              fontSize: 50
            ),
           ),
 ) ,
 bottomNavigationBar: BottomNavigationBar(
  onTap: _navBottom,
  currentIndex: _selectedIndex,
  
  items: [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
  BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
  BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
  //BottomNavigationBarItem(icon: Icon(Icons.home)),
  
 ]),
    );
  }
}