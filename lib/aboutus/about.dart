import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Committee{
  String img;
  String name;
  String role;
  String branch;
  Committee({this.img,this.name,this.role,this.branch});
}
  List committee=[
Committee(img:'assets/cricket.jpeg',
name: 'Prof. V.K. Parashar',
role: 'Dean Student Welfare',
branch: 'Dean Student Welfare'
),
Committee(img:'assets/chess.jpeg',
name: 'Mr. Pratap Singh',
role: 'Sports Officer',
branch: 'Sports Officer'
),
Committee(img:'assets/football.jpeg',
name: 'Ishit Bansal',
role: 'Organizing Head',
branch: 'Ph no: 9999999999'
),
Committee(img:'assets/chess.jpeg',
name: 'Utkarsh Shrivastava',
role: 'College Boys Captain',
branch: 'Ph no: 9999999999'
),
Committee(img:'assets/riya.jpeg',
name: 'Moullisha Singh',
role: 'College Girls Captain',
branch: 'College Girls Captain'
),

  ];
  class Developer{
  String img;
  String name;
  String role;
  String branch;
  Developer({this.img,this.name,this.role,this.branch});
}
  List developer=[
Developer(img:'assets/cricket.jpeg',
name: 'Tanya Agarwal',
role: 'Developer',
branch: 'IT'
),
Developer(img:'assets/riya.jpeg',
name: 'Riya Garg',
role: 'Developer',
branch: 'CSE'
),
Developer(img:'assets/football.jpeg',
name: 'Taru Agarwal',
role: 'Developer',
branch: 'CSE'
),
Developer(img:'assets/chess.jpeg',
name: 'Deepak Chaurasia',
role: 'Designer',
branch: 'IT'
),

  ];



class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        child: Text(
                          "Inter Departmental Sports Events are back,and it promises to be bigger and more extravagant than ever! The annualintra college sports meet, spanning accross several days commences with the Opening Ceremony and would comprise competitive events across 15 disciplines namely Cricket, Football, Basketball, Kabaddi, Table Tennis, Athletics, Badminton, Powerlifting, Carrom, Chess, Tug of War, Pool, Kho Kho, Volleyball and Obstacle Race. The wide assortment of indoor and outdoor events that Sports Meet to showcase their talents in various sports and instils the message to rise above our limits and achieve the improbable. It includes the feeling of righteousness, prudence and brotherhood and reinstates the fact that Ajay Kumar Garg Engineering College shapes up its students to achieve excellence in all spheres of life. So the seven contigents CSE, IT, EC, ME,EN, CE+EI and MBA+MCA are all ready in this rip-roaring competition to achieve the final victory. Are you?",
                          textAlign: TextAlign.justify,
                          style: GoogleFonts.crimsonText(
                              color: Colors.white, fontSize: 17),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Center(
                          child: Text(
                        'ORGANISING COMMITTEE',
                        style: GoogleFonts.crimsonText(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height - 425,
                      width: MediaQuery.of(context).size.width - 50,
                      child: ListView.builder(
                        itemCount: committee.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              width: MediaQuery.of(context).size.width - 200,
                              height: MediaQuery.of(context).size.height - 605,
                              child: FlipCard(
                                  front: Card(
                                      elevation: 5,
                                      color: Colors.black,
                                      margin: EdgeInsets.all(8.0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Colors.black, width: 2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Container(
                                             width: MediaQuery.of(context).size.width - 200,
                              height: MediaQuery.of(context).size.height -530,
                                            child: Image.asset(
                                              committee[index].img,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20)),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                    child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                      committee[index].name,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                       committee[index].role,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                )),
                                              )),
                                        ],
                                      )),
                                  back: Card(
                                      elevation: 5,
                                      color: Colors.black,
                                      margin: EdgeInsets.all(8.0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Colors.black, width: 2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context).size.width - 200,
                              height: MediaQuery.of(context).size.height -530,
                                            child: Image.asset(
                                              
                                               committee[index].img,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20)),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                    child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                       committee[index].name,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                       committee[index].branch,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                )),
                                              )),
                                        ],
                                      )))),
                        ),
                      ),
                    ),
                    SizedBox(height:20),
                      Padding(
                      padding: EdgeInsets.all(5),
                      child: Center(
                          child: Text(
                        'DEVELOPER TEAM',
                        style: GoogleFonts.crimsonText(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    SizedBox(height:20),
                    Container(
                      height: MediaQuery.of(context).size.height - 425,
                      width: MediaQuery.of(context).size.width - 50,
                      child: ListView.builder(
                        itemCount: developer.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                              width: MediaQuery.of(context).size.width - 200,
                              height: MediaQuery.of(context).size.height - 605,
                              child: FlipCard(
                                  front: Card(
                                      elevation: 5,
                                      color: Colors.black,
                                      margin: EdgeInsets.all(8.0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Colors.black, width: 2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context).size.width - 200,
                              height: MediaQuery.of(context).size.height -530,
                                            child: Container(
                                              width: MediaQuery.of(context).size.width - 200,
                              height: MediaQuery.of(context).size.height -530,
                                              child: Image.asset(
                                                developer[index].img,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20)),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                    child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                      developer[index].name,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                       developer[index].role,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                )),
                                              )),
                                        ],
                                      )),
                                  back: Card(
                                      elevation: 5,
                                      color: Colors.black,
                                      margin: EdgeInsets.all(8.0),
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: Colors.black, width: 2),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      clipBehavior: Clip.antiAliasWithSaveLayer,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context).size.width - 200,
                              height: MediaQuery.of(context).size.height -530,
                                            child: Container(
                                              width: MediaQuery.of(context).size.width - 200,
                              height: MediaQuery.of(context).size.height -530,
                                              child: Image.asset(
                                                 developer[index].img,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20)),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Center(
                                                    child: Column(
                                                  children: <Widget>[
                                                    Text(
                                                       developer[index].name,
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                     developer[index].branch,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                       color: Colors.black),
                                                    ),
                                                  ],
                                                )),
                                              )),
                                        ],
                                      )))),
                        ),
                      ),
                    ),
                    SizedBox(height:5)
                  ],
                ),
              ),
            )));
  }
}
