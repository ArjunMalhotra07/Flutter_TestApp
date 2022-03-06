import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Center(child: Text('Login')),
      ),
      body: Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/home.png",
                height: 300,
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter User Name", labelText: "User Name"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    ),
                    const SizedBox(height: 25),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter E-Mail", labelText: "E-Mail"),
                    ),
                    const SizedBox(height: 40),
                    InkWell(
                      onTap: (() async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      }),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 20 : 8)),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Text("Login"),
                    //   style: ElevatedButton.styleFrom(
                    //     primary: Colors.grey[700], // background
                    //     onPrimary: Colors.white, // foreground
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
