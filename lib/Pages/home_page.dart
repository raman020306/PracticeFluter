import 'package:flutter/material.dart';
import 'package:flutter_application_1/utills/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Flutter";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FirstApp"),
      ),
       body: Center(
        child: Container(
          child: Text("welcome to $days day learning on  $name"),
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
