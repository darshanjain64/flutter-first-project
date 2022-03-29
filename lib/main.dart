import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utilis/route.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode:ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark,
      fontFamily:GoogleFonts.lato().fontFamily,
      ),
  
   routes: {
  "/":(context) => LoginPage(),
  MyRoute.homeRoute:(context) => HomePage(),
  MyRoute.loginRoute :(context) => LoginPage(),
},
    );
  }
}
