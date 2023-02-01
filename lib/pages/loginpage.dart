// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter_application_1/pages/home_page.dart";
import "package:flutter_application_1/utils/routes.dart";

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool change = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 30.0),
            Image.asset(
              "assets/images/undraw_two_factor_authentication_namy.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Text(
                " Welcome $name ",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"))
                ],
              ),
            ),
            InkWell(
                onTap: () async {
                  setState(() {
                    change = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, Myroutes.homeroute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: change ? 50 : 150,
                  height: change ? 50 : 75,

                  alignment: Alignment.center,
                  // ignore: sort_child_properties_last
                  child: change
                      ? Icon(
                          Icons.done_sharp,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(change ? 50 : 25)),
                ))
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, Myroutes.homeroute);
            //   },
            //   style: TextButton.styleFrom(minimumSize: Size(100, 50)),
            //   child: Text(
            //     "Login",
            //     style: TextStyle(fontSize: 15),
            //   ),
            // ),
          ]),
        ));
  }
}
