import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/Pages/home_page.dart';
import 'package:practice/Pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode:ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      initialRoute: "/login",
      routes: {
         "/" :(context) => LoginPage(),
         "/home":(context) => HomePage(),
         "/login": (context) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
