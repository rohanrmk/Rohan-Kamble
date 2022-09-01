import 'package:flutter/cupertino.dart';

class Notification extends StatelessWidget {
  const Notification({Key? key}) : super(key: key);

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