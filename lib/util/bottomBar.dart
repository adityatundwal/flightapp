import 'package:flutter/material.dart';

BottomNavigationBar BtmBar() {
  return BottomNavigationBar(
      elevation: 0,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      iconSize: 34,
      selectedFontSize: 16,
      unselectedFontSize: 16,
      selectedLabelStyle:
          TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
      unselectedLabelStyle:
          TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.cloud_outlined), label: 'Saved'),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined), label: 'Booked'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
      ]);
}
