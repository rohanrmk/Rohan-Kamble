import 'package:flutter/material.dart';
import '';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 10,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
            // fontWeight: FontWeight.bold,
            fontFamily: 'Billabong',
            fontSize: 35,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 35,
              ),
              onPressed: (){}),
          IconButton(
              icon:Image.asset('imagess/message'),
              onPressed: (){}),
          // iconButton(icon: Icons.search),
          // iconButton(icon: Icons.add_box),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items:
          [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_music_rounded),
                label: 'Reel',
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
                backgroundColor: Colors.blue),
          ]
      ),
    );
  }
}
