import 'package:flutter/material.dart';

class PayMenu extends StatelessWidget {
  const PayMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(child: Text(
        'Made by Toktar and Zhigitali',style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.red,
      ),
      ),),
    );
  }
}
