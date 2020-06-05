import "package:flutter/material.dart";
import 'dart:async';
class Schedule extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ScheduleState();
  }
}


class ShowUp extends StatefulWidget {
  final Widget child;
  final int delay;

  ShowUp({@required this.child, this.delay});

  @override
  _ShowUpState createState() => _ShowUpState();
}

class _ShowUpState extends State<ShowUp> with TickerProviderStateMixin {
  AnimationController _animController;
  Animation<Offset> _animOffset;

  @override
  void initState() {
    super.initState();

    _animController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _animController);
    _animOffset =
        Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
            .animate(curve);

    if (widget.delay == null) {
      _animController.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay), () {
        _animController.forward();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _animController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
      opacity: _animController,
    );
  }
}


class ScheduleState extends State<Schedule> {
  int delayAmount = 500;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 12.0,),
                  Row(
                    children: <Widget>[
                      
                      Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/cricket.jpeg")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/football.jpeg")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/basketball.jpeg")
                              ,))
                    ],
                  ),
                  Row(children: <Widget>[
                    Expanded(child: ShowUp(child: Text("Cricket",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount, ),),
                    Expanded(child: ShowUp(child: Text("Football",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount, ),),
                     Expanded(child: ShowUp(child: Text("Basketball",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount, ),),
                  ],),
                  SizedBox(height: 12.0,),
                  Row(
                    children: <Widget>[
                      
                      Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/kabaddi.jpeg")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/tabletennis.jpeg")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/athletics.jpeg")
                              ,))
                    ],
                  ),
                  Row(children: <Widget>[
                     Expanded(child: ShowUp(child: Text("Kabaddi",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount+100, ),),
                    Expanded(child: ShowUp(child: Text("Table Tennis",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount+100, ),),
                   Expanded(child: ShowUp(child: Text("Athletics",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount+100, ),),
                  ],),
                   SizedBox(height: 12.0,),
                  Row(
                    children: <Widget>[
                      
                      Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/badminton.jpeg")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/powerlifting.jpeg")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/carrom.jpeg")
                              ,))
                    ],
                  ),
                  Row(children: <Widget>[
       Expanded(child: ShowUp(child: Text("Badminton",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount+200, ),),
                    Expanded(child: ShowUp(child: Text("Powerlifting",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount+200, ),),
                   Expanded(child: ShowUp(child: Text("Carrom",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount+200, ),),
                  ],),
                  SizedBox(height: 12.0,),
                  Row(
                    children: <Widget>[
                      
                      Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/chess.jpeg")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/tugofwar.jpeg")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/pool.jpeg")
                              ,))
                    ],
                  ),
                  Row(children: <Widget>[
                  Expanded(child: ShowUp(child: Text("Chess",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount+300, ),),
                 Expanded(child: ShowUp(child: Text("Tug of War",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount+300, ),),
               Expanded(child: ShowUp(child: Text("Pool",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount+300, ),),
                  ],),
                   SizedBox(height: 12.0,),
                  Row(
                    children: <Widget>[
                      
                      Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/khokho.jpeg")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/volleyball.jpeg")
                              ,)),
                               Expanded(
                          child: GestureDetector(onTap: (){
                            print("rg");
                          },
                              child: Image.asset("assets/obstaclerace.jpeg")
                              ,))
                    ],
                  ),
                  Row(children: <Widget>[
                 Expanded(child: ShowUp(child: Text("Kho Kho",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount+400, ),),
                 Expanded(child: ShowUp(child: Text("Volleyball",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount+400, ),),
                 Expanded(child: ShowUp(child: Text("Obstacle Race",textAlign: TextAlign.center,style: TextStyle(color: Colors.white),),
                    delay: delayAmount+400, ),),
                  ],),
                  SizedBox(height: 12.0,),
                  
                ],
              ),
            ),
         );
  }
}