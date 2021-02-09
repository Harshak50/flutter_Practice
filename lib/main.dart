import 'package:flutter/material.dart';
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
      ),
      initialRoute: "/home",
      routes: {
         "/" :(context) => LoginPage(),
         "/home":(context) => HomePage(),
         "/login": (context) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
