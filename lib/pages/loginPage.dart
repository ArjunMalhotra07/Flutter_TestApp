import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: const Center(child: Text('Login')),
      ),
      body: Material(
        elevation: 8,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            InkWell(
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
            const SizedBox(height: 25),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter User Name", labelText: "User Name"),
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
                  const SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {
                      print("Successful Login");
                    },
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[700], // background
                      onPrimary: Colors.white, // foreground
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
