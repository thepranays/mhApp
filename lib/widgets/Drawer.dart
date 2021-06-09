import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mhapp_flutter/screens/AboutUsScreen.dart';
import '../screens/MainScreen.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mhapp_flutter/screens/FacultyStatusPage.dart';

class DrawerWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    const TextStyle drawerUserInfo = TextStyle(fontFamily: "SourceSansPro",fontSize:20,color:Colors.white,fontWeight:FontWeight.bold);

    return ListView(
      children: [
        DrawerHeader(
    decoration: BoxDecoration(
    color: Theme.of(context).primaryColor,
    ),
    child:
          Row(children: [
              Card(
              child: CircleAvatar(
              maxRadius: 60.0,
              backgroundImage:
              NetworkImage('https://scontent.fbom18-1.fna.fbcdn.net/v/t31.18172-8/10368883_10152168120507198_4845064001711375253_o.jpg?_nc_cat=108&ccb=1-3&_nc_sid=9267fe&_nc_ohc=tmjxPJfXBXEAX_Ft9om&_nc_ht=scontent.fbom18-1.fna&oh=2efc51703ca63f12ec5f241e9f08ba41&oe=60E32225'),
              ),
              elevation: 50.0,
              shape: CircleBorder(),
              clipBehavior: Clip.antiAlias,
              ),

             Column(children: [
               SizedBox(height: 10,),
                Container(width:144,height: 50,child: FittedBox(child: Text("Mark Zuckerberg",style: drawerUserInfo,))),
                Row(children: [
                  Container(width:30,child: FittedBox(child: Text("A3",style: drawerUserInfo,))),
                  SizedBox(width: 10,),
                  Container(width:30,child: FittedBox(child: Text("72",style: drawerUserInfo,))),
                ],),
               Container(width:60,child: FittedBox(child: Text("Science",style: drawerUserInfo,))),

              ],),


          ],)


    ),
        Card(child: ListTile(selectedTileColor:Theme.of(context).primaryColor,leading:Icon(Icons.group),
          title:Text("Dashboard",style: TextStyle(fontSize:20,fontFamily:'Product Sans',color:Theme.of(context).accentColor),),onTap: () {
          Navigator.of(context).pushReplacementNamed(MainScreen.homePagePath);
          },)),
        Card(child: ListTile(selectedTileColor:Theme.of(context).primaryColor,leading:Icon(Icons.group),
          title:Text("Faculty Status",style: TextStyle(fontSize:20,fontFamily:'Product Sans',color:Theme.of(context).accentColor),),onTap: () {
            Navigator.of(context).pushReplacementNamed(FacultyStatusPage.facultyStatusPagePath);
          },)),
        Card(child: ListTile(selectedTileColor:Theme.of(context).primaryColor,leading:Icon(Icons.book),
          title:Text("Timetable",style: TextStyle(fontSize:20,fontFamily:'Product Sans',color:Theme.of(context).accentColor),),onTap: () {},)),
        Card(child: ListTile(selectedTileColor:Theme.of(context).primaryColor,leading:Icon(Icons.text_snippet),
          title:Text("Exams",style: TextStyle(fontSize:20,fontFamily:'Product Sans',color:Theme.of(context).accentColor),),onTap: () {},)),
        Card(child: ListTile(selectedTileColor:Theme.of(context).primaryColor,leading:Icon(Icons.event),
          title:Text("Events",style: TextStyle(fontSize:20,fontFamily:'Product Sans',color:Theme.of(context).accentColor),),onTap: () {},)),
        Card(child: ListTile(selectedTileColor:Theme.of(context).primaryColor,leading:Icon(Icons.alarm_on),
          title:Text("Opportunities",style: TextStyle(fontSize:20,fontFamily:'Product Sans',color:Theme.of(context).accentColor),),onTap: () {},)),
        Card(child: ListTile(selectedTileColor:Theme.of(context).primaryColor,leading:Icon(Icons.weekend),
          title:Text("Holidays",style: TextStyle(fontSize:20,fontFamily:'Product Sans',color:Theme.of(context).accentColor),),onTap: () {},)),
        Card(child: ListTile(selectedTileColor:Theme.of(context).primaryColor,leading:Icon(Icons.contact_support),
          title:Text("About Us",style: TextStyle(fontSize:20,fontFamily:'Product Sans',color:Theme.of(context).accentColor),),onTap: () {
            Navigator.of(context).pushReplacementNamed(AboutUsScreen.aboutUsPath);
          },)),


      ],
    );
  }
}
