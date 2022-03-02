import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text(
          //'GirlScript Summer of Code $days $s',
          "Welcome Home ",
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.black,
      ),
      drawer: const Drawer(),
      body: Center(
        child: Material(
          elevation: 8,
          shape: CircleBorder(),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: InkWell(
            splashColor: Colors.black26,
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: Colors.black, width: 3),
                shape: BoxShape.circle,
              ),
              child: Ink.image(
                image: const AssetImage("assets/images/login.png"),
                height: 85,
                width: 85,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
