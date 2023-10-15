import 'package:flightapp/screens/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(flightapp());
}

class flightapp extends StatelessWidget {
  MaterialColor mycolor = MaterialColor(
    0xffEE82EE,
    <int, Color>{
      50: Color(0xffEE82EE),
      100: Color(0xffEE82EE),
      200: Color(0xffEE82EE),
      300: Color(0xffEE82EE),
      400: Color(0xffEE82EE),
      500: Color(0xffEE82EE),
      600: Color(0xffEE82EE),
      700: Color(0xffEE82EE),
      800: Color(0xffEE82EE),
      900: Color(0xffEE82EE),
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
