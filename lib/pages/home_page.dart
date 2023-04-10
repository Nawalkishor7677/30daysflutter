import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

    final  int days= 30;
   final String name= "nawalkishor"; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gamesy"),
      ),
        body: Center(
         child: Container(
        child: Text("welcome to $days days of flutter $name"),
      ),
      ),
      drawer: Drawer(),
      );
  }
}