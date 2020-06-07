import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class Items {
String title;

String img;
Items({this.title, this.img});
}
List <Items> items = [
  Items(
title: 'BDCoE',
img: "assets/bdcoe.jpg",

),
Items(
title: 'Cricket',
img: "assets/cricket.jpeg",

),
Items (
title:'Football',
img: "assets/football.jpeg",

),
Items (
title:'Basketball',
img:"assets/basketball.jpeg",

),
Items (
title:'Kabaddi',
img: "assets/kabaddi.jpeg",

),
Items(
title: 'Table Tennis',
img: "assets/tabletennis.jpeg",

),
Items(
title: 'Athletics',
img: "assets/athletics.jpeg",

),
Items(
title: 'Badminton',
img: "assets/badminton.jpeg"
),
Items(
title: 'Power Lifting',
img: "assets/powerlifting.jpeg"
),
Items(
title: 'Carrom',
img: "assets/carrom.jpeg",

),
Items(
title: 'Chess',
img: "assets/chess.jpeg",

),
Items(
title: 'Tug of War',
img: "assets/tugofwar.jpeg"
),
Items(
title: 'Pool',
img: "assets/pool.jpeg"
),
Items(
title: 'Volleyball',
img: "assets/volleyball.jpeg"
),
Items(
title: 'Kho Kho',
img: "assets/khokho.jpeg"
),
Items(
title: 'Obstacle Race',
img: "assets/obstaclerace.jpeg"
),
];


class Stories extends StatelessWidget {
  
 
 
  @override
  Widget build(BuildContext context) {
  final List imgList = [
'assets/riya.jpeg',
'assets/saksham.jpeg',
'assets/bdcoe.jpg',

];


 
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
        
         Expanded(
    child: new Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 16,
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
      transitionDuration: const Duration(milliseconds: 700),
          
      pageBuilder: (BuildContext buildContext,
      
          Animation animation,
          Animation secondaryAnimation) {
            // Future.delayed(Duration(seconds: 8), () {
            //               Navigator.of(buildContext).pop(true);
            //             });
        return Center(
          child: Container(
            width: MediaQuery.of(buildContext).size.width - 70,
            height: MediaQuery.of(buildContext).size.height - 420,
            
            color: Colors.white,
            child: Column(
              children: [
                Container(child: new Swiper(
  itemBuilder: (BuildContext context, int index) {
    return new Image.asset(
      imgList[index],
      fit: BoxFit.fill,
    );
  },
  itemCount: 3,
  viewportFraction: 0.8,
  scale: 0.9,
),
                width:MediaQuery.of(buildContext).size.width - 70 ,
                height: MediaQuery.of(buildContext).size.height - 420,
                ),
                
              ],
            ),
          ),
        );
         
      }
      
      );
      print('rg');
                     print('rg1');

                      },
                    child: Card(
                      
            
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Color.fromRGBO(128, 0, 0, 50), width: 1),
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
                            color: Color.fromRGBO(128, 0, 0, 50), width: 5),
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(items[index].img,)),
                      ),
                      margin: const EdgeInsets.all(3),
                    ),
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  items[index].title,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ),

        ],
      ),
    );
  }

  
     

}