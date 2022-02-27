import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    var center = Center(
        child: Text(
      "Login Page",
      style:
          TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
    ));
    return Material(
      child: center,
    );
  }
}
