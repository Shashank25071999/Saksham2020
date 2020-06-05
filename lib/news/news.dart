import 'package:flutter/material.dart';


class News extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
             backgroundColor: Colors.black,
            
         body: 
               
        SingleChildScrollView(
                  child: Column(
            children:[
              SizedBox(height:10),
                     GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
           
            context: context,
            builder: (builder){
              return new Container(
                height: 200.0,
                color: Colors.white, //could change this to Color(0xFF737373), 
                           //so you don't have to change MaterialApp canvasColor
                child: new Container(
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                            topLeft: const Radius.circular(10.0),
                            topRight: const Radius.circular(10.0))),
                    child: new Center(
                      child: new Text("This is a modal sheet",),
                    )),
              );
            }
        );
            print('rg');
      },
                          
                      child: new Container(
      //  decoration: BoxDecoration(color: Colors.white),
                margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                height: 105,
                child: new Card(
                  elevation: 3.0,
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        width: 150.0,
                        child: Image.asset('assets/bdcoe.jpg',fit: BoxFit.fill,),
                          
                        
                      ),
                      new Expanded(
                          child: new Container(
                            margin: new EdgeInsets.all(10.0),
                            
                              child: new Text(
                                'Team BDCoE launches Saksham App!',
                                style: new TextStyle(color: Colors.black, fontSize: 16.0, fontWeight:FontWeight.bold),
                              ),
                            
                          )),

                    ],
                  ),
                ),
              ),
            ),
            ],
          ),
        ),
    );
  }



}