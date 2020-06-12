import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saksham/news/story.dart';

class Value {
  String heading;
  String teams;
  String image;
  String description;

  Value({this.heading, this.teams, this.image, this.description});
}

List values = [
  Value(
      heading: 'Team BDCoE launches Saksham App!',
      teams: 'WELCOME',
      image: 'assets/bdcoe.jpg',
      description:
          'BDCoE launches Saksham 2k19 app.Check daily for latest news, schedule and medal tally. You can also participate in poll.'),
  Value(
      heading: 'What a great match!',
      teams: 'CS v/s ME',
      image: 'assets/chess.jpeg',
      description:
          'qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnmqwertyuioplkjhgfdsazxcvbnmlkjhgfdsaqwertyuioplkjhgfdsazxcvbnmlkjhgfdsaqwert'),
  Value(
      heading: 'Team CSE rocks!',
      teams: 'CS v/s IT',
      image: 'assets/bdcoe.jpg',
      description:
          'Team CSE defeats team IT with huge margin. HFGHFDHJFHJfghfhjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj'),
  Value(
      heading: 'Team IT in finals with CSE!',
      teams: 'EN v/s IT',
      image: 'assets/tugofwar.jpeg',
      description:
          'In a thriller match, team IT defeats team EN in the last round.cffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'),
  Value(
      heading: 'Team CSE bangs the cup!',
      teams: 'CS v/s IT',
      image: 'assets/khokho.jpeg',
      description:
          'Team CSE defeats team IT and bange the cup this year. Team IT stood runner up in the match. Match was a great thriller.'),
];

class Display extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: <Widget>[
        new SizedBox(
          child: Stories(),
          height: deviceSize.height * 0.22,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: values.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: new BoxDecoration(
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.grey,
                        blurRadius: 08.0,
                        offset: Offset(0.0, 0.75)),
                  ],
                ),
                child: GestureDetector(
                  onTap: () {
                    showGeneralDialog(
                        context: context,
                        barrierDismissible: true,
                        barrierLabel: MaterialLocalizations.of(context)
                            .modalBarrierDismissLabel,
                        barrierColor: Colors.black45,
                        transitionDuration: const Duration(milliseconds: 600),
                        pageBuilder: (BuildContext buildContext,
                            Animation animation, Animation secondaryAnimation) {
                          return Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width-50,
                              height:MediaQuery.of(context).size.height-229,
                              //padding: EdgeInsets.all(20),
                              color: Colors.white,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      height:
                                         MediaQuery.of(context).size.height-454,
                                      width:MediaQuery.of(context).size.width-50,
                                      child: Image.asset(
                                        values[index].image,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Material(
                                      type: MaterialType.transparency,
                                      child: SingleChildScrollView(
                                        child: Padding(
                                          padding: EdgeInsets.all(9),
                                          child: Column(children: <Widget>[
                                            Center(
                                              child: Text(
                                                values[index].teams,
                                                style: GoogleFonts.crimsonText(
                                                    color: Colors.black,
                                                    fontSize: 23,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            SizedBox(height: 15),
                                            Padding(
                                              padding: EdgeInsets.all(9),
                                              child: Text(
                                                  values[index].description,
                                                  style: GoogleFonts.crimsonText(fontSize:15),
                                                  ),
                                                  
                                            )
                                          ]),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: FloatingActionButton.extended(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          icon: Icon(
                                            Icons.close,
                                            color: Colors.white,
                                          ),
                                          label: Text(
                                            "Close",
                                            style:
                                                GoogleFonts.crimsonText(color: Colors.white,fontSize:16),
                                          ),
                                          foregroundColor: Colors.black,
                                          backgroundColor: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                  },
                  child: Card(
                    color: Colors.black,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
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
                                          image: AssetImage(
                                              'assets/saksham.jpeg')),
                                    ),
                                  ),
                                  new SizedBox(
                                    width: 10.0,
                                  ),
                                  new Text(
                                    "Saksham",
                                    style: GoogleFonts.crimsonText(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        //
                        // Card(
                        //   child: Container(
                        //     decoration: BoxDecoration(image:
                        //     DecorationImage(image: AssetImage(
                        //       values[index].image,
                        //     ))
                        //     )
                        //   )
                        // ),
                 //       Container(
                          // fit: FlexFit.loose,
                        //  width: 300,
                       //   height: 280,
                        //  child: 
                          AspectRatio(
                                                      child: new Image.asset(
                              values[index].image,
                              fit: BoxFit.fill,
                              
                            ), aspectRatio: 23/17,
                          ),
                      //  ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Center(
                            child: Text(
                              values[index].heading,
                              style: GoogleFonts.crimsonText(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, left: 16, right: 16),
                          child: Text(
                            values[index].teams,
                            style: GoogleFonts.crimsonText(
                             //   fontWeight: FontWeight.bold,
                                color: Colors.white,
                                 fontSize:14
                                ),
                               
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text("1 Day Ago",
                              style:
                                  GoogleFonts.crimsonText(color: Colors.grey, fontSize: 12)),
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
          ),
        ),
      ]),
    );
  }
}
