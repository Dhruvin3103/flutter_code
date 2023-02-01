import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/loginpage.dart';

void main() {
  runApp(Dcapp());
}

class Dcapp extends StatelessWidget {
  const Dcapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      theme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.purple),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Loginpage(),
        "/home": (context) => Homepage(),
        // "/login": (context) => Loginpage(),
      },
    );
  }
}
