import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saksham/aboutus/about.dart';
import 'package:saksham/home/drawer.dart';
import 'package:saksham/news/news.dart';
import 'package:saksham/register/register.dart';
import 'package:saksham/schedule/schedule.dart';

import 'homepage.dart';

// class Choice {

// }

// const List<Choice> choices = const <Choice>[
//   const Choice(title: 'News'),
//   const Choice(title: 'Schedule'),
//   const Choice(title: 'Home'),
//   const Choice(title: 'Register'),
//   const Choice(title: 'About Us'),

// ];

class DrawerExample extends StatefulWidget {
  final int index;
  final String title;
  DrawerExample(
    this.index,
    this.title,
  );

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DrawerExampleState(index, title);
    throw UnimplementedError();
  }
}

class DrawerExampleState extends State<DrawerExample> {
  //             Choice _choice;
  // initState(){
  //   super.initState();
  //   _choice = choices[0];
  // }

  List<DrawerItem> listpages = [
    DrawerItem(icon: Icon(Icons.library_books), label: "News"),
    DrawerItem(icon: Icon(Icons.calendar_today), label: "Schedule"),
    DrawerItem(icon: Icon(Icons.home), label: "Home"),
    DrawerItem(icon: Icon(Icons.person_add), label: "Register"),
    DrawerItem(icon: Icon(Icons.people), label: "About Us"),
  ];

  int selectedIndex = 2;
  List<Widget> abc = [News(), Schedule(), Home(), Register(), AboutUs()];

  String title;
  DrawerExampleState(this.selectedIndex, this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 5,
                  top: MediaQuery.of(context).size.width / 20),
              child: Text(
                title,
                style: GoogleFonts.crimsonText(fontSize: 26),
              )),
          shape: MyShapeBorder(20),
          backgroundColor: Color.fromRGBO(128, 0, 0, 1),
          leading: Builder(
            builder: (context) => IconButton(
              icon: new Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        drawer: Stack(
            children: [CurvedDrawer(items: listpages, index: selectedIndex)]),
        body: abc[selectedIndex]);
  }
}

class CustomShapeBorder extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    final double innerCircleRadius = 150.0;

    Path path = Path();
    path.lineTo(0, rect.height);
    path.quadraticBezierTo(rect.width / 2 - (innerCircleRadius / 2) - 30,
        rect.height + 15, rect.width / 2 - 75, rect.height + 50);
    path.cubicTo(
        rect.width / 2 - 40,
        rect.height + innerCircleRadius - 40,
        rect.width / 2 + 40,
        rect.height + innerCircleRadius - 40,
        rect.width / 2 + 75,
        rect.height + 50);
    path.quadraticBezierTo(rect.width / 2 + (innerCircleRadius / 2) + 30,
        rect.height + 15, rect.width, rect.height);
    path.lineTo(rect.width, 0.0);
    path.close();

    return path;
  }
}

class MyShapeBorder extends ContinuousRectangleBorder {
  const MyShapeBorder(this.curveHeight);
  final double curveHeight;

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) => Path()
    ..lineTo(0, rect.size.height)
    ..quadraticBezierTo(
      rect.size.width / 2,
      rect.size.height + curveHeight * 2,
      rect.size.width,
      rect.size.height,
    )
    ..lineTo(rect.size.width, 0)
    ..close();
}
