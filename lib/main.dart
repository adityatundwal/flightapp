import 'package:flightapp/screens/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(flightapp());
}

class flightapp extends StatelessWidget {
  MaterialColor mycolor = MaterialColor(
    0xff00406c,
    <int, Color>{
      50: Color(0xff00406c),
      100: Color(0xff00406c),
      200: Color(0xff00406c),
      300: Color(0xff00406c),
      400: Color(0xff00406c),
      500: Color(0xff00406c),
      600: Color(0xff00406c),
      700: Color(0xff00406c),
      800: Color(0xff00406c),
      900: Color(0xff00406c),
    },
  );
  flightapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: mycolor,
      ),
      home: Home(),
    );
  }
}
