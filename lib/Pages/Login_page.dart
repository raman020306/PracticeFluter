import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Text(
        "Login Page",
        style: TextStyle(
            color: Colors.green, 
            // fontSize: 20,
            fontWeight: FontWeight.bold
            ),
            textScaleFactor: 1.8,
      ),
      ),
    );
  }
}
