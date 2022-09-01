import 'package:flutter/material.dart';

class Lecture2 extends StatelessWidget {
  const Lecture2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height:300.0,
          width:200.0,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right:30.0),
          margin: const EdgeInsets.only(right: 30.0),

          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
              color: Colors.red,
              width:3.0,
            ),
              gradient: const LinearGradient(
              begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.orange,
              Colors.white,
            ]
          ),
          boxShadow: const[
            BoxShadow(
              spreadRadius:1,
              blurRadius:20,
              color:Colors.blue,
              offset:Offset(20, 20)),
          ],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
            topRight: Radius.circular(100.0),
          )
      ),
        ),
      ),
    );
  }
}
