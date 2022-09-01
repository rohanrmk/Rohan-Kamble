import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lec1/Screens/Whatsapp/whatsapp_widget.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

int currentIndex = 0;

class _TabBarDemoState extends State<TabBarDemo> with TickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            tabController!.index = 2;
          });
        },
        child: Icon(Icons.search),
      ),
      body: Column(
        children: [
          TabBar(
            controller: tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                child: Text(
                  'Home',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.card_travel,
                  color: Colors.blue,
                ),
                child: Text(
                  'Cart',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                child: Text(
                  'Search',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                child: Text(
                  'Profile',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                HomePage(),
                CartPage(),
                SearchPage(),
                ProfilePage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool data = false;

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      setState(() {
        data = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: data
          ? Text(
              'HOME',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'Marathi',
              ),
            )
          : CircularProgressIndicator(),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LinearProgressIndicator(),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'SEARCH',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'PROFILE',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}
