import 'package:flutter/material.dart';

class Saturday extends StatefulWidget {
  const Saturday({Key? key}) : super(key: key);

  @override
  State<Saturday> createState() => _SaturdayState();
}

class _SaturdayState extends State<Saturday> {
  int number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: GestureDetector(
          child: Text('Title'),
          onTap: () {},

        ),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.login_sharp),
          SizedBox(
           width: 20.0,
         ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(0,50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.notifications),
              Icon(Icons.add_card_rounded),
              Icon(Icons.access_alarms),
              Icon(Icons.account_tree_rounded),
            ],
          ),
        ),
      ),
      drawer: Drawer(),
      //endDrawer: Drawer(),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton.extended(
                  elevation: 15.0,

                  onPressed: () {
                    setState(() {
                      number <= 0 ? number = 0 : number--;
                    });
                    },
                  icon: Icon(Icons.remove),
                  label: Text('Minus'),
                ),
                Text(
                  number.toString(),
                  style: TextStyle(fontSize: 30.0),
                ),
                FloatingActionButton.extended(
                    elevation: 15.0,
                    onPressed: () {
                      number++;
                      setState(() {
                      });
                    },
                    label:Icon(Icons.add),
                  icon: Text('Plus'),
                ),
              ],
            ),
            SizedBox(height: 50.0),
            Container(
            color: Colors.yellow,
              child: GestureDetector(
               onTap: (){
                 print('Click on Row');
               },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    SizedBox(width: 20.0
                    ),
                    Text('Plus'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50.0),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            GestureDetector(
              child: TextButton(onPressed: (){},
             child: Text('Submit'),
              ),
            ),
            MaterialButton(onPressed: (){},
            color:Colors.green,
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  width:2.0,
                  color: Colors.red,
                ),
              ),
              child: Text('Login'),
            ),
            OutlinedButton(onPressed: (){}, child: Text('Submit')),
          ],
        ),
      ),
    );

  }
}
