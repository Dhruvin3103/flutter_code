// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 112, 75, 234),
          title: Text(
            "Login page",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 238, 238),
                fontWeight: FontWeight.bold),
          )),
      body: const Center(
        child: Text(
          "Login",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
