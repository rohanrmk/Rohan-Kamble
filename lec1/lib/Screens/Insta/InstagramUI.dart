import 'package:flutter/material.dart';
import 'package:lec1/Screens/Whatsapp/whatsapp_widget.dart';

Widget commoncircle({
  String imgUrl = '',
  String label = 'Your Story',
}) =>
    Column(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(
              'https://308286-943399-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2022/03/Radha-Krishna-Whatsapp-DP-Images.png'),
        ),
        Text(label),
      ],
    );

class InstagramUI extends StatefulWidget {
  const InstagramUI({Key? key}) : super(key: key);

  @override
  State<InstagramUI> createState() => _InstagramUIState();
}

int currentIndex = 0;

class _InstagramUIState extends State<InstagramUI> {
  // List<Widget> pages = [
  //   HomePage(),
  //   CartPage(),
  //   SearchPage(),
  //   ProfilePage(),
  // ];

  Widget currentPage() {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return CartPage();
      case 2:
        return SearchPage();
      default:
        return ProfilePage();
    }
  }

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
          iconButton(icon: Icons.add_box_outlined),
          iconButton(icon: Icons.send),
        ],
      ),
      body: currentPage(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        ///backgroundColor: Colors.blue,
        ///selectedItemColor: Colors.white,
        currentIndex: currentIndex,
        onTap: (val) {
          setState(() {
            currentIndex = val;
          });
        },
        showUnselectedLabels: false,
        showSelectedLabels: false,
        iconSize: 35,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home'
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Search'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Reel'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.0,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) =>  commoncircle(label: 'Story'),
                    ),
          ),
          ),
            Container(
              height: 390,
              width: double.infinity,
              color: Colors.white24,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('imagess/boy.jpg'),
                  ),
                  Text(
                    'Rohan_rmk',
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                ],
              ),
            ),
      ],

    );

  }
}

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
       child: Text(
         'CART',
         style: TextStyle(fontSize: 50),
       ),
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
