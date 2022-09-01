import 'package:flutter/material.dart';

class HomeWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child:Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: const EdgeInsets.all(5.0),

                  child: Text('\$1200',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //Icon(Icons.menu,
                 // size: 30,
                //),
                Align(
                  alignment: Alignment.topRight,
                  child:
                  Icon(Icons.menu,
                    size: 30,
                    ),
                ),
              ],
            ),
          ),
          Row(
            children: [

              Container(
                height: 140.0,
                width: 140.0,
                child:
                ElevatedButton.icon(onPressed: () {},
                  icon: Icon(Icons.search,size: 50,color: Colors.white),
                  label: Text('LOAD MONEY'),
                   ),
   // Icon(Icons.search,size: 50,color: Colors.white),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.zero,
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.zero,
                  ),
                ),
              ),
              Container(
                height: 140.0,
                width: 140.0,
                padding: EdgeInsets.all(20.0),
                child: Icon(Icons.abc_sharp,size: 50,color: Colors.white),

                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.zero,
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.circular(15.0),
              ),
                ),
              ),
           ],
          ),
          Row(
            children: [
              Container(
                height: 140.0,
                width: 140.0,
                padding: EdgeInsets.all(20.0),
                child: Icon(Icons.print,size: 50,color: Colors.white),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.zero,
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.zero,
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
              ),
              Container(
                height: 140.0,
                width: 140.0,

                margin: EdgeInsets.all(20.0),
                child: Icon(Icons.photo,size: 50,color: Colors.white),

                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    topLeft: Radius.zero,
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.zero,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(
                height: 140,
                width: 320,
                margin: EdgeInsets.all(20.0),
                child: Icon(Icons.search,size: 50),
                decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 140,
                width: 320,
                margin: EdgeInsets.all(20.0),
                child: Icon(Icons.search,size: 50),
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
