import 'package:flutter/material.dart';
import 'package:lec1/utils/space.dart';

class UiFlipkart extends StatefulWidget {
  const UiFlipkart({Key? key}) : super(key: key);

  @override
  State<UiFlipkart> createState() => _FlipCartState();
}

class _FlipCartState extends State<UiFlipkart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
            onPressed: (){},
            icon:Icon(Icons.menu)
        ),
        title: Column(
          children: const [
            Text("Flipkart",
              style: TextStyle(color: Colors.white, fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            Text('Explore Plus',
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_important)),
          IconButton(onPressed: (){}, icon: Icon(Icons.wordpress)),
        ],

        bottom:PreferredSize(
          preferredSize: Size(10,70),

          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for products brands and more',
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
        ),
      ),
      body: Column(
        children: [

          Row(
            children: [
              Column(
                children: [
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.menu),
                    color: Colors.blue,),
                  Text('All Categories',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              ),
              HorizontalSpace(50),
              Column(
                children: [
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.ice_skating_outlined),
                    color: Colors.red,),
                  Text('Essentials',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              ),
              HorizontalSpace(50),
              Column(
                children: [
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.local_offer_sharp),
                    color: Colors.purple,),
                  Text('Offer Zone',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              ),
              HorizontalSpace(50),
              Column(
                children: [
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.local_grocery_store_rounded),
                    color: Colors.yellow,),
                  Text('Grocery',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              ),
              HorizontalSpace(50),
              Column(
                children: [
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.mobile_friendly),
                    color: Colors.brown,),
                  Text('Mobiles',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              ),
              HorizontalSpace(50),
              Column(
                children: [
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.electric_bike,
                        color: Colors.green,)),
                  Text('Electrics',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              ),
            ],
          ),
          VerticalSpace(10),
          Row(children: [
            Container(
              height: 200, width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              child:Image.network('https://www.sponsoredlinx.com.au/'
                  'wp-content/uploads/2022/05/4530890.jpg',fit:BoxFit.fill,),
            ),],),
          VerticalSpace(15),
          Row(children: [
            Container(
              padding: EdgeInsets.only(left: 30,top: 10),
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.orangeAccent,
              child: Row(
                children: [
                  const Text('EXTRA \$30 OFF\n On Fashion',
                    style:TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.indigo),
                  ),
                  HorizontalSpace(70),
                  MaterialButton(
                    onPressed: (){},
                    height: 30,
                    minWidth: 90,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text('Shop Now >',
                      style: TextStyle(color: Colors.white,fontSize: 15),),
                    color: Colors.indigo,
                  ),
                ],
              ),
            )],), Row(children: [
            Row(

              children: [
                const Text('Discount For You',
                  style: TextStyle(fontSize: 18
                      ,fontWeight: FontWeight.bold),),

                CircleAvatar(
                    radius: 15,
                    child: IconButton(onPressed: (){}, icon:
                    Icon(Icons.arrow_forward_ios_rounded))
                ),

              ],
            ),],), Row(children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10,bottom: 10,right: 10),
                  height: 180,
                  width: MediaQuery.of(context).size.width/2,
                  color: Colors.blue,
                  child:Image.network('https://www.sponsoredlinx.com.au/'
                      'wp-content/uploads/2022/05/4530890.jpg',fit:BoxFit.fill,),
                ),
              ],
            ), Column(children: [
              Container(
                padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
                height: 180,
                width: MediaQuery.of(context).size.width/2,
                color: Colors.blue,
                child: Image.network('https://www.sponsoredlinx.com.au/'
                    'wp-content/uploads/2022/05/4530890.jpg',fit:BoxFit.fill,),
              ),
            ],
            ),
          ],
          ),
        ],
      ),
     /* bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.cyanAccent
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.cyanAccent
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.cyanAccent
          ),

        ],
      ),*/
    );
  }
}