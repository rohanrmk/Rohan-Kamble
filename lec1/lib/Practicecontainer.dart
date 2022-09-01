import 'package:flutter/material.dart';

class GridPractice extends StatelessWidget {
  EdgeInsets padding = const EdgeInsets.all(20.0);

  Widget commonContainer({
    String label = '',
    String imagepath = '',
   /// IconData icon = Icons.access_alarms_sharp,
  }) =>
      Column(
        children: [
          Expanded(
            child: Container(

              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(imagepath),
                  fit: BoxFit.cover
                  
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1.0,
                    blurRadius: 5,
                    offset: Offset(5, 9),

                  ),
                ],
              ),
              // child: Icon(
              //   icon,
              //   color: Colors.white70,
              //   size: 40,
              // ),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            label,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );

  List<String> list=['Camp','Fishing','Packing','Forest','Transport','Rafting','Radio','Tea','Telescope'];

  List<String> images=['imagess/Dp.jpg','imagess/mock.jpg','imagess/mock.jpg','imagess/mock.jpg','imagess/mock.jpg','imagess/mock.jpg','imagess/mock.jpg','imagess/mock.jpg','imagess/mock.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 695,
        width: 350,
        margin: padding,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2.0),
          borderRadius: const BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(left: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20.0),
              child: Icon(Icons.arrow_back_outlined),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Add Itenerary',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Choose type of activity that will you\nadd in your camp schedule',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
            SizedBox(height: 30.0),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                  ),
                       itemCount: list.length,
                       itemBuilder: (context,index) => commonContainer(
                         label: list[index],
                         imagepath: images[index],
                        /// icon: Icons.foggy,
                       ),
                  ),
              ),
            ),
            /* child:Column(
            mainAxisSize: MainAxisSize.max,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    commonContainer(label: 'Camp', icon: Icons.add_alarm_sharp),
                    commonContainer(label: 'Fishing', icon: Icons.fiber_dvr),
                    commonContainer(
                        label: 'Packing', icon: Icons.backpack_outlined),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      commonContainer(label: 'Forest', icon: Icons.foggy),
                      commonContainer(
                          label: 'Transport', icon: Icons.traffic_sharp),
                      commonContainer(label: 'Rafting', icon: Icons.radar),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    commonContainer(label: 'Radio', icon: Icons.aspect_ratio),
                    commonContainer(label: 'Tea', icon: Icons.telegram),
                    commonContainer(
                        label: 'Telescope', icon: Icons.temple_buddhist),
                  ],
                ),
              ],
            ),*/



            Container(
              height: 63,
              width: 346,
              padding: const EdgeInsets.only(top: 24.0),
              decoration: const BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(27.0),
                  bottomRight: Radius.circular(27.0),
                ),
              ),
              child: const Text(
                'CONTINUE',
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );

  }
}
