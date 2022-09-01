import 'package:flutter/material.dart';
import 'package:lec1/Screens/Whatsapp/whatsapp_widget.dart';
import 'package:lec1/Screens/Whatsapp/whatsappdetail.dart';

import 'package:lec1/utils/colors.dart';

class WhatsUp extends StatelessWidget {
  WhatsUp({Key? key}) : super(key: key);

  DateTime dateNow = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String date = '${dateNow.day}/${dateNow.month}/${dateNow.year}';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('WhatsApp'),
        actions: [
          iconButton(icon: Icons.search, onTap: () {}),
          iconButton(icon: Icons.message, onTap: () {}),
          iconButton(icon: Icons.more_vert, onTap: () {}),
        ],
        bottom: PreferredSize(
          preferredSize: Size(0, 50),
          child: Container(
            height: 50,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                labels('Calls'),
                labels('Chats'),
                labels('Contacts'),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
        mini: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WatsappDetail(label: data[index]['title'],
                  msg: data[index]['subtitle'])
              ),
              );
            },
            leading:  CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage(data[index]['image']),
              // child: Image.asset(),
            ),
            title: Text(
             data[index]['title'],
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              data[index]['subtitle'],
              style: TextStyle(fontSize: 14.0),
            ),
            trailing: Text(
              data[index]['date'],
              style: TextStyle(fontSize: 12.0),
            ),
          );
          /* return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('images/abc.jpeg'),
                  // child: Image.asset(),
                ),
                horizontalSpace(20.0),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Real Estate Advertize Bangalore Pune Mumbai'
                            .toString(),
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      verticalSpace(8.0),
                      Text(
                        'Bhavani'.toString(),
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
                Text(
                  date,
                  style: TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          );*/
        },
        separatorBuilder: (context, index) => const Divider(
          thickness: 2,
          height: 2,
        ),
      ),
    );
  }
}
