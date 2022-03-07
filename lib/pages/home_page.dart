import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Center(
          child: Text(
            "Welcome Home ",
            style: TextStyle(color: Colors.white),
          ),
        ),
        shadowColor: Colors.black,
      ),
      drawer: const Drawer(),
      body: Material(
        elevation: 8,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/home.png",
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
