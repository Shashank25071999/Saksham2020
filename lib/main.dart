import 'package:flutter/material.dart';
import 'package:saksham/home/curved.dart';

void main() {
//   List<DrawerItem>items=[DrawerItem(icon: Icon(Icons.home),label: "Riya Garg"),
//  DrawerItem(icon: Icon(Icons.hot_tub),label: "Shashank"),
//  DrawerItem(icon: Icon(Icons.hotel),label: "Anshul Sahai"),
//  DrawerItem(icon: Icon(Icons.http),label: "Appu Garg"),
//  DrawerItem(icon: Icon(Icons.image),label: "Nautanki sala")];
  runApp(MaterialApp(
    home: DrawerExample(2, 'Home'),
    debugShowCheckedModeBanner: false,
  ));
}

// List<DrawerItem> listpages = [

//         DrawerItem(
//           icon: Icon(Icons.library_books),
//           label:"News"
//         ),
//         DrawerItem(
//           icon: Icon(Icons.calendar_today),
//           label: "Schedule"
//         ),
//          DrawerItem(
//           icon: Icon(Icons.home),
//           label:"Home"
//         ),
//          DrawerItem(
//           icon: Icon(Icons.person_add),
//           label:"Register"
//         ),
//         DrawerItem(
//           icon: Icon(Icons.people),
//           label:"About Us"
//         ),

//   ];
