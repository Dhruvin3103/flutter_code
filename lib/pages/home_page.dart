import "package:flutter/material.dart";

class Homepage extends StatelessWidget {
  Homepage();
  @override
  Widget build(BuildContext context) {
    var age = 18.2;
    // var can take any datatype
    // ignore: unused_local_variable
    const pie = 3.14;
    //const its like final value but final can be modified but const cant
    //num takes both int and double
    //int double string bool remaining data types

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dc App"),
      ), //its basically the status bar or the header of app page
      body: Center(
        child: Container(
          child: Text("This a text and your age is $age"),
        ),
      ), //body contains the main element in it
      drawer: Drawer(), //drawer is basically a menu
    );
  }
}
