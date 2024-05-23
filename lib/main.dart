import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Login_page.dart';
import 'package:flutter_application_1/Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/Home",
      routes: {
        "/" :(context) => LoginPage(),
        "/Home":(context) => HomePage(),
        "/Login":(context) => LoginPage(),
      },
    );
  }
}
