import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Text(
          //'GirlScript Summer of Code $days $s',
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
        shadowColor: Colors.black,
      ),
      drawer: const Drawer(),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   //children: <Widget>[Image.asset("assets/images/home.png")],
      //   children: <Widget>[
      //     Container(
      //       height: 120.0,
      //       width: 120.0,
      //       decoration: const BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage('assets/images/home.png'),
      //           fit: BoxFit.fill,
      //         ),
      //         shape: BoxShape.circle,
      //       ),
      //     ),
      //   ],
      // ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: const Text('Login Page'),
        ),
      ),
    );
  }
}
// return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigate to the second screen when tapped.
//             Navigator.pushNamed(context, '/login');
//           },
//           child: const Text('Launch screen'),
//         ),
//       ),
//     );