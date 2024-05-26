import 'package:flutter/material.dart';
import 'package:flutter_application_1/utills/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class cartpage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "cart".text.make(),
      ),
    );
  }
}