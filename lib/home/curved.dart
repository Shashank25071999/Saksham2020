import 'package:flutter/material.dart';
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


class DrawerExample extends StatefulWidget{

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

class DrawerExampleState extends State<DrawerExample>{

    //             Choice _choice;
    // initState(){
    //   super.initState();
    //   _choice = choices[0];
    // }
    

    List<DrawerItem> listpages = [
        
        DrawerItem(
          icon: Icon(Icons.library_books),
          label:"News"
        ),
        DrawerItem(
          icon: Icon(Icons.calendar_today),
          label: "Schedule"
        ),
         DrawerItem(
          icon: Icon(Icons.home),
          label:"Home"
        ),
         DrawerItem(
          icon: Icon(Icons.person_add),
          label:"Register"
        ),
        DrawerItem(
          icon: Icon(Icons.people),
          label:"About Us"
        ),

    
  ];

  int selectedIndex=2 ;
  List<Widget> abc = [
    News(),
    Schedule(),
    Home(),
    Register(),
    AboutUs()
  ];



String title;
  DrawerExampleState(this.selectedIndex, this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(
                  title: Text(title),
                  backgroundColor: Color.fromRGBO(128, 0, 0, 50),
                  leading: Builder(
        builder: (context) => IconButton(
            icon: new Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
                ),
                drawer: Stack(children:[ CurvedDrawer(items: listpages,index:selectedIndex)]),
                body:abc[selectedIndex]);
  }
}