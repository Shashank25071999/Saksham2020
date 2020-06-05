import 'package:flutter/material.dart';
import 'package:saksham/news/story.dart';


class Display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
          body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => index == 0
            ? new SizedBox(
                child: Stories(),
                height: deviceSize.height * 0.25,
              )
            : Container(
              decoration: new BoxDecoration(
                color: Colors.black,
                 border: Border.all(
      color: Colors.black,
    ),
    borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          new BoxShadow(
            color: Colors.grey,
            blurRadius: 20.0,
          ),
        ],
      ),
              child: Card(
                color: Colors.black,
                shape: BeveledRectangleBorder(
    borderRadius:BorderRadius.all(Radius.circular(20)),
  ),
  
                
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                              Row(
                                children: <Widget>[
                                  new Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage('assets/saksham.jpeg')
                                              ),
                                    ),
                                  ),
                                  new SizedBox(
                                    width: 10.0,
                                  ),
                                  new Text(
                                    "Team BDCoE launches Saksham App!",
                                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                                  )
                                ],
                              ),
                           
                          ],
                        ),
                      ),
                      Flexible(
                        fit: FlexFit.loose,
                        child: new Image.asset(
                          "assets/bdcoe.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height:10),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          "Big Data Centre Of Excellence",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ),
                      new SizedBox(
                                height: 5.0,
                              ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child:
                              Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
                      ),
                      new SizedBox(
                                height: 10.0,
                              ),
                    ],
                  ),
                            ),
              ),
            ),
            
      ),
      
    );
  }
}