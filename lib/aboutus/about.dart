import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        child:  Scaffold(
backgroundColor: Colors.black,
      body: Container(
     
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40,),
           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Container(child: Text("Inter Departmental Sports Events are back,and it promises to be bigger and more extravagant than ever! The annualintra college sports meet, spanning accross several days commences with the Opening Ceremony and would comprise competitive events accross 15 disciplines namely Cricket, Football, Basketball, Kabaddi, Table Tennis, Athletics, Badminton, Powerlifting, Carrom, Chess, Tug of War, Pool, Kho Kho, Volleyball and Obstacle Race. The wide assortment of indoor and outdoor events that Sports Meet to showcase their talents in various sports and instils the message to rise above our limits and achieve the improbable. It includes the feeling of righteousness, prudence and brotherhood and reinstates the fact that Ajay Kumar Garg Engineering College shapes up its students to achieve excellence in all spheres of life. So the seven contigents CSE, IT, EC, ME,EN, CE+EI and MBA+MCA are all ready in this rip-roaring competition to achieve the final victory. Are you?",textAlign: TextAlign.justify,style:GoogleFonts.crimsonText(color: Colors.white,fontSize: 17) ,),),
            ),

            SizedBox(height: 40,),
          
         
          ],
        ),
      ),
    ))
    ));
  }
}
