import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  

  final stories = Expanded(
    child: new Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => new Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        print('rg');
                      },
                                          child: new Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color:Color.fromRGBO(128, 0, 0, 50),width: 5),
                          
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/cricket.jpeg')),
                        ),
                        margin: const EdgeInsets.all(8),
                      ),
                    ),
                    SizedBox(height:3),
                    Text('Big Data',style: TextStyle(color: Colors.white),),
                  ],
                ),
              
              ],
            ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        
          stories,
        ],
      ),
    );
  }
}