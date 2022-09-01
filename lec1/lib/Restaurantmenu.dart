import 'package:flutter/material.dart';

class Restaurantmenu extends StatefulWidget {
const Restaurantmenu({Key? key}) : super(key: key);

@override
State<Restaurantmenu> createState() => _RestaurantmenuState();
}

class _RestaurantmenuState extends State<Restaurantmenu> {
  int currentIndex=0;


String? error;
String bookonline = 'Book Online';
String deliver = 'Delivery';
String takeAway = 'Take Away';
String groupvalue = 'Delivery';
String dinein = 'Dine-in';

Widget containers(String url) => Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.zero,
        image: DecorationImage(image: NetworkImage(url), fit: BoxFit.fill),
      ),
    );

  Widget commonBox({String imagepath='imagess/smiley.jpg',String txt='pizza'})=> Column(
      children: [
      Padding(
          padding: const EdgeInsets.only(top: 5.0),
        child: Container(

        height: 175,
        width: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
          image: AssetImage(imagepath),
          fit: BoxFit.cover,
            ),
          ),
          //child: const Text('Rohan'),
          ),
          ),
          Text(txt)

      ],
    );

int _value=6;


@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      title: Text(
        "Deliver to",
        style: TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child:
            TextField(
                decoration: InputDecoration(
                  hintText: 'Search food by Category',
                  labelStyle: TextStyle(color:Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color:Colors.white),
                  ),
                  filled: true,
                  fillColor:Colors.white,
                  prefixIcon: IconButton(onPressed: (){},icon: Icon(Icons.search),
                  ),
                  suffixIcon:
                  IconButton(onPressed: (){},icon: Icon(Icons.mic),
                  ),
                )
            ),
          ),

          preferredSize: Size(0, 50)),
    ),
    body: SingleChildScrollView(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Slider(
              value: _value.toDouble(),
              min: 1.0,
              max: 20.0,
              divisions: 10,
              activeColor: Colors.green,
              inactiveColor: Colors.red,
              label: 'Price Range',
              onChanged: (double newValue) {
                setState(() {
                  _value = newValue.round();
                });
              },
              semanticFormatterCallback: (double newValue) {
                return '${newValue.round()} dollars';
              }
          ),
            SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black87,
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(
                          value: bookonline,
                          groupValue: groupvalue,
                          onChanged: (value) {
                            setState(() {
                              groupvalue = value.toString();
                            });
                          }),
                      Text(
                        bookonline,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),

                    ],
                  ),
                ),


                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black87,
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(
                          value: deliver,
                          groupValue: groupvalue,
                          onChanged: (value) {
                            setState(() {
                              groupvalue = value.toString();
                            });
                          }),
                      Text(
                        deliver,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Radio(
                          value: takeAway,
                          groupValue: groupvalue,
                          onChanged: (value) {
                            setState(() {
                              groupvalue = value.toString();
                            });
                          }),
                      Text(
                        takeAway,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      Radio(
                          value: dinein,
                          groupValue: groupvalue,
                          onChanged: (value) {
                            setState(() {
                              groupvalue = value.toString();
                            });
                          }),
                      Text(
                        dinein,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),

                    ],
                  ),
                ),
              ],

            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                containers(
                    'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                containers(
                    'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ],
            ),
          ),

          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  commonBox(imagepath: 'imagess/Pizza.jpg',txt: 'Pizza'),
                  commonBox(imagepath: 'imagess/Burger.jpg',txt: 'Burger',),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  commonBox(imagepath: 'imagess/Idli.jpg',txt: 'BreakFast'),
                  commonBox(imagepath: 'imagess/mock.jpg',txt: 'Mocktail'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  commonBox(imagepath: 'imagess/vegfood.jpg',txt: 'Vegetarian'),
                  commonBox(imagepath: 'imagess/NonVeg.jpg',txt: 'Non-Vegetarian'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  commonBox(imagepath: 'imagess/sandwich.jpg',txt: 'Sandwich'),
                  commonBox(imagepath: 'imagess/cake.png',txt: 'Cakes & Pastries'),
                ],
              ),

            ],
          ),
        ],

      ),
    ),

    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      currentIndex: currentIndex,
      onTap: (index)=>setState(() => currentIndex= index),

      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue
        ),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),
            label: 'Cart',
            backgroundColor: Colors.blue
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined),
            label: 'Search',
            backgroundColor: Colors.blue
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.blue
        ),

      ],
    ),
  );
}
}
