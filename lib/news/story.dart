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
                         showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context)
          .modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 600),
      pageBuilder: (BuildContext buildContext,
      
          Animation animation,
          Animation secondaryAnimation) {
        return Center(
          child: Container(
            width: MediaQuery.of(context).size.width - 70,
            height: MediaQuery.of(context).size.height - 420,
            
            color: Colors.white,
            child: Column(
              children: [
                Container(child: Image.asset('assets/riya.jpeg',fit: BoxFit.fill),
                width:MediaQuery.of(context).size.width - 70 ,
                height: MediaQuery.of(context).size.height - 420,
                ),
                
              ],
            ),
          ),
        );
      });
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
                              image: AssetImage('assets/riya.jpeg')),
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