import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
         backgroundColor: Colors.black,
         body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bckgrnd.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
     
    )
    );
  }

}