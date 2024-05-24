import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Login_page.dart';
import 'package:flutter_application_1/utills/routes.dart';


import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
      primarySwatch: Colors.green,
      fontFamily: GoogleFonts.lato().fontFamily,
      
      ),

      debugShowCheckedModeBanner: false,

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRoutes.HomePage,
      routes: {
        "/" :(context) => LoginPage(),
       MyRoutes.HomePage:(context) => HomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),
      },
    );
  }
}
