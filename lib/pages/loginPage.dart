import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Material(
    //   child: Column(children: [Image.asset("assets/images/login.png")]),
    // );
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25.0, 8.0, 8.0, 8.0),
        child: Center(
          child: Material(
            elevation: 8,
            shape: CircleBorder(),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: InkWell(
              splashColor: Colors.black26,
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 3),
                  shape: BoxShape.circle,
                ),
                child: Ink.image(
                  image: const AssetImage("assets/images/home.png"),
                  height: 85,
                  width: 85,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
