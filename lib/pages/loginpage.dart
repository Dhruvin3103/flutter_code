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
  final _formkey = GlobalKey<FormState>();
  movetohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        change = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Myroutes.homeroute);
      setState(() {
        change = false;
      });
    } else {
      return "sorry";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
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
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "Username"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username is empty";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password cant be empty";
                          } else if (value.length < 8) {
                            return "mininum length of password should be 8";
                          } else
                            return null;
                        },
                        decoration: InputDecoration(
                            hintText: "Enter password", labelText: "Password"))
                  ],
                ),
              ),
              Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(change ? 50 : 25),
                child: InkWell(
                    onTap: () => movetohome(context),
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
                    )),
              )
            ]),
          ),
        ));
  }
}
