import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/loginPage.dart';
import 'package:flutter_catalog/utils/routes.dart';
//import 'package:email_validator/email_validator.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringVegies(thaila: true, rupees: 500);
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }

  bringVegies({@required thaila, int rupees = 100}) {}
}
