import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Material(
    //   child: Column(children: [Image.asset("assets/images/login.png")]),
    // );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the second screen when tapped.
            Navigator.pushNamed(context, '/home');
          },
          child: const Text('Home screen'),
        ),
      ),
    );
  }
}
