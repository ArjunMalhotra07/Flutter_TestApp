import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  num temp = 30.5;
  num tempNew = 45;
  var day = "Tuesday"; //var day = 5  //var day = true
  static const pi = 3.14; //cant be changed
  String s = "Arjun";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.grey[800],
        title: const Text(
          "Hello Mummy I Love You",
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.black,
      ),
      drawer: const Drawer(),
      body: Center(
          child: Container(
        child: Text("Day $day. Temp $temp Days into the mission $days"),
      )),
    );
  }
}
