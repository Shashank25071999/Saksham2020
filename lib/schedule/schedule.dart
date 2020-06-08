import "package:flutter/material.dart";
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

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
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Cricket',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26,
                                          color: Colors.deepPurple[800]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/cricket.jpeg"),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Football',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26, color: Colors.red[800]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/football.jpeg"),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Basketball',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26,
                                          color: Colors.deepPurple[800]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/basketball.jpeg"),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Cricket",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount,
                  ),
                ),
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Football",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount,
                  ),
                ),
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Basketball",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Kabaddi',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26,
                                          color: Colors.deepPurple[400]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/kabaddi.jpeg"),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Table Tennis',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26,
                                          color: Colors.green[800]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/tabletennis.jpeg"),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Athletics',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26,
                                          color: Colors.deepPurple[500]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/athletics.jpeg"),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Kabaddi",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount + 100,
                  ),
                ),
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Table Tennis",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount + 100,
                  ),
                ),
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Athletics",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount + 100,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Badminton',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26, color: Colors.red[800]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/badminton.jpeg"),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Powerlifting',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26,
                                          color: Colors.green[800]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/powerlifting.jpeg"),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Carrom',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26, color: Colors.red[800]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/carrom.jpeg"),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Badminton",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount + 200,
                  ),
                ),
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Powerlifting",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount + 200,
                  ),
                ),
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Carrom",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount + 200,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Chess',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26,
                                          color: Colors.deepPurple[800]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/chess.jpeg"),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Tug of War',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26,
                                          color: Colors.deepPurple[500]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/tugofwar.jpeg"),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Pool',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26,
                                          color: Colors.green[800]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/pool.jpeg"),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Chess",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount + 300,
                  ),
                ),
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Tug of War",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount + 300,
                  ),
                ),
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Pool",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount + 300,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Kho Kho',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26,
                                          color: Colors.deepPurple[800]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/khokho.jpeg"),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Volleyball',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26, color: Colors.red[800]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/volleyball.jpeg"),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return new Container(
                            height: 750.0,
                            color: Colors.black,
                            child: new Container(
                              decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.only(
                                      topLeft: const Radius.circular(30.0),
                                      topRight: const Radius.circular(30.0))),
                              child: Column(children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Center(
                                    child: Text(
                                      'Obstacle Race',
                                      style: GoogleFonts.crimsonText(
                                          fontSize: 26,
                                          color: Colors.deepPurple[500]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    itemCount: 1,
                                    itemBuilder:
                                        (BuildContext ctxt, int index) =>
                                            Padding(
                                      padding: EdgeInsets.all(6),
                                      child: Container(
                                        child: Column(
                                          children: <Widget>[
                                            Center(
                                                child: Text('Boys',
                                                    style: GoogleFonts.crimsonText(
                                                        fontSize: 20))),
                                            Padding(
                                              padding: EdgeInsets.all(5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      'IT v/s CSE',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.black,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '05 Sept',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 10,
                                                        bottom: 10,
                                                        left: 20,
                                                        right: 20),
                                                    child: Text(
                                                      '4:00',
                                                      style: GoogleFonts.crimsonText(
                                                          color: Colors.grey,
                                                          fontSize: 20),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          );
                        });
                    print("rg");
                  },
                  child: Image.asset("assets/obstaclerace.jpeg"),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Kho Kho",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount + 400,
                  ),
                ),
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Volleyball",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount + 400,
                  ),
                ),
                Expanded(
                  child: ShowUp(
                    child: Text(
                      "Obstacle Race",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.crimsonText(color: Colors.white,fontSize: 16),
                    ),
                    delay: delayAmount + 400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
          ],
        ),
      ),
    );
  }
}
