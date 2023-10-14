import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
    elevation: 0,
    toolbarHeight: 150,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome, Sir',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 18, color: Colors.white),
        ),
        SizedBox(height: 10),
        Text(
          'Thinking About Your\nNext Trip ?',
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 25, color: Colors.white),
        ),
      ],
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: Colors.transparent,
          onPressed: () {},
          child: Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          shape: CircleBorder(
            side: BorderSide(color: Colors.black, width: 1),
          ),
        ),
      ),
    ],
  );
}
