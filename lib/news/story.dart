import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';

class Items {
  String title;
  List<String> icon;
  String img;

  Items({this.title, this.img, this.icon});
}

List items = [
  Items(title: 'BDCoE', img: "assets/bdcoe.jpg", icon: [
    'assets/chess.jpeg',
    'assets/saksham.jpeg',
    'assets/bdcoe.jpg',
    'assets/tugofwar.jpeg',
    "assets/basketball.jpeg"
  ]),
  Items(title: 'Cricket', img: "assets/cricket.jpeg", icon: [
    'assets/badminton.jpeg',
    'assets/saksham.jpeg',
    'assets/cricket.jpeg',
  ]),
  Items(title: 'Football', img: "assets/football.jpeg", icon: [
    'assets/saksham.jpeg',
    'assets/football.jpeg',
    'assets/cricket.jpeg',
  ]),
  Items(title: 'Basketball', img: "assets/basketball.jpeg", icon: [
    'assets/volleyball.jpeg',
    'assets/saksham.jpeg',
    'assets/basketball.jpeg',
  ]),
  Items(title: 'Kabaddi', img: "assets/kabaddi.jpeg", icon: [
    'assets/tabletennis.jpeg',
    'assets/saksham.jpeg',
    'assets/kabaddi.jpeg',
  ]),
  Items(title: 'Table Tennis', img: "assets/tabletennis.jpeg", icon: [
    'assets/kabaddi.jpeg',
    'assets/saksham.jpeg',
    'assets/tabletennis.jpeg',
  ]),
  Items(title: 'Athletics', img: "assets/athletics.jpeg", icon: [
    'assets/obstaclerace.jpeg',
    'assets/saksham.jpeg',
    'assets/athletics.jpeg',
  ]),
  Items(title: 'Badminton', img: "assets/badminton.jpeg", icon: [
    'assets/athletics.jpeg',
    'assets/saksham.jpeg',
    'assets/badminton.jpeg',
  ]),
  Items(title: 'Powerlifting', img: "assets/powerlifting.jpeg", icon: [
    'assets/carrom.jpeg',
    'assets/saksham.jpeg',
    'assets/powerlifting.jpeg',
  ]),
  Items(title: 'Carrom', img: "assets/carrom.jpeg", icon: [
    'assets/pool.jpeg',
    'assets/saksham.jpeg',
    'assets/carrom.jpeg',
  ]),
  Items(title: 'Chess', img: "assets/chess.jpeg", icon: [
    'assets/powerlifting.jpeg',
    'assets/saksham.jpeg',
    'assets/chess.jpeg',
  ]),
  Items(title: 'Tug of War', img: "assets/tugofwar.jpeg", icon: [
    'assets/riya.jpeg',
    'assets/saksham.jpeg',
    'assets/tugofwar.jpeg',
  ]),
  Items(title: 'Pool', img: "assets/pool.jpeg", icon: [
    'assets/riya.jpeg',
    'assets/saksham.jpeg',
    'assets/pool.jpeg',
  ]),
  Items(title: 'Volleyball', img: "assets/volleyball.jpeg", icon: [
    'assets/riya.jpeg',
    'assets/saksham.jpeg',
    'assets/volleyball.jpeg',
  ]),
  Items(title: 'Kho Kho', img: "assets/khokho.jpeg", icon: [
    'assets/riya.jpeg',
    'assets/saksham.jpeg',
    'assets/khokho.jpeg',
  ]),
  Items(title: 'Obstacle Race', img: "assets/obstaclerace.jpeg", icon: [
    'assets/riya.jpeg',
    'assets/saksham.jpeg',
    'assets/football.jpeg',
  ]),
];

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
<<<<<<< HEAD
        
         Expanded(
    child: new Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => new Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Column(
              children: <Widget>[
                Column(
=======
          Expanded(
            child: new Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: new ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) => new Stack(
                  alignment: Alignment.bottomRight,
>>>>>>> 25f47cfec217a8467575f46527535d0a1ee07807
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            showGeneralDialog(
                                context: context,
                                barrierDismissible: true,
                                barrierLabel: MaterialLocalizations.of(context)
                                    .modalBarrierDismissLabel,
                                barrierColor: Colors.black45,
                                transitionDuration:
                                    const Duration(milliseconds: 700),
                                pageBuilder: (BuildContext buildContext,
                                    Animation animation,
                                    Animation secondaryAnimation) {
                                  // Future.delayed(Duration(seconds: 8), () {
                                  //               Navigator.of(buildContext).pop(true);
                                  //             });
                                  return Center(
                                    child: Container(
                                      width: MediaQuery.of(buildContext)
                                              .size
                                              .width -
                                          70,
                                      height: MediaQuery.of(buildContext)
                                              .size
                                              .height -
                                          420,
                                      color: Colors.white,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: new Swiper(
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index1) {
                                                return new Image.asset(
                                                  items[index].icon[index1],
                                                  fit: BoxFit.fill,
                                                );
                                              },
                                              itemCount:
                                                  items[index].icon.length,
                                              viewportFraction: 0.8,
                                              scale: 0.9,
                                            ),
                                            width: MediaQuery.of(buildContext)
                                                    .size
                                                    .width -
                                                70,
                                            height: MediaQuery.of(buildContext)
                                                    .size
                                                    .height -
                                                420,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                            print('rg');
                            print('rg1');
                          },
                          child: Card(
                            elevation: 25,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: Color.fromRGBO(128, 0, 0, 50),
                                  width: 1),
                              borderRadius: BorderRadius.circular(90),
                            ),
                            child: new Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: new BoxDecoration(
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey,
                                    //       blurRadius: 08.0,
                                    //       offset: Offset(0.0, 0.75)),
                                  ),
                                ],
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color.fromRGBO(128, 0, 0, 50),
                                    width: 5),
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      items[index].img,
                                    )),
                              ),
                              margin: const EdgeInsets.all(3),
                            ),
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          items[index].title,
                          style: GoogleFonts.crimsonText(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
<<<<<<< HEAD
          ],
        )],
        )
    ),
  ),
         ),
        ]
          ),
=======
          ),
        ],
      ),
>>>>>>> 25f47cfec217a8467575f46527535d0a1ee07807
    );
  }
}
