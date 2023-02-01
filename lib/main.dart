import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/loginpage.dart';
import 'package:flutter_application_1/utils/routes.dart';

void main() {
  runApp(Dcapp());
}

class Dcapp extends StatelessWidget {
  const Dcapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Loginpage(),
        Myroutes.homeroute: (context) => Homepage(),
        Myroutes.loginroute: (context) => Loginpage(),
      },
    );
  }
}
