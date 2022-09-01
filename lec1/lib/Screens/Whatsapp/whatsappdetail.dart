import 'package:flutter/material.dart';
import 'package:lec1/Screens/Whatsapp/whatsapp_widget.dart';


class WatsappDetail extends StatelessWidget {
  String label= '';
  String msg = '';

  WatsappDetail({this.label='',this
      .msg=''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF075E54),
        title: labels(label,size: 20.0),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: labels(msg, color: Colors.purple, size: 20.0),
      ),
    );
  }
}