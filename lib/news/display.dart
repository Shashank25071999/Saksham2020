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
                height: deviceSize.height * 0.22,
              )
            : Padding(
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
                              Animation animation,
                              Animation secondaryAnimation) {
                            return Center(
                              child: Container(
                                width: MediaQuery.of(context).size.width - 50,
                                height:
                                    MediaQuery.of(context).size.height - 280,
                                //padding: EdgeInsets.all(20),
                                color: Colors.white,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                50,
                                        child: Image.asset(
                                          'assets/bdcoe.jpg',
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
                                              Text(
                                                'WELCOME',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 15),
                                              Padding(
                                                padding: EdgeInsets.all(9),
                                                child: Text(
                                                    'BDCoE launches Saksham 2k19 app.Check daily for latest news, schedule and medal tally. You can also participate in poll.'),
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
                                              style: TextStyle(
                                                  color: Colors.white),
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
                            padding: const EdgeInsets.fromLTRB(
                                16.0, 16.0, 8.0, 16.0),
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
                                      "Team BDCoE launches Saksham App!",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
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
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              "Big Data Centre Of Excellence",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text("1 Day Ago",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10)),
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
    );
  }
}
