import '../widgets/Drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class MainScreen extends StatefulWidget {
  static const String  homePagePath ="/home-page";
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {

  final insideShadowEffect = NeumorphicStyle(
      shape: NeumorphicShape.flat,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
      depth: -20,
      lightSource: LightSource.topLeft,
      color: Colors.grey.shade200,
      intensity: 1
      ,surfaceIntensity: 0,

  );

  final insideShadowEffect2 = NeumorphicStyle(
      shape: NeumorphicShape.flat,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
      depth: -20,
      lightSource: LightSource.top,
      color: Colors.white,
      intensity: 1
      ,surfaceIntensity: 1,




  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer: Drawer(child:DrawerWidget()),

      appBar:AppBar(title:Text("MH APP",style: TextStyle(color: Colors.white,fontFamily:"SourceSansPro",fontSize:20),),),body: SafeArea(
      child:Column(children: <Widget>[
        Neumorphic(style:insideShadowEffect,margin: EdgeInsets.all(15),
          child:
            Container(
              width: 350,
              height: 180,
              padding: EdgeInsets.only(top:20,bottom: 20),
              child: Column(children: [
                Card(elevation:10,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),child: Padding(padding:EdgeInsets.all(10),child: FittedBox(child: Text("Time Left:",style:Theme.of(context).textTheme.headline6,)))),
                Neumorphic(margin:EdgeInsets.only(top:20,bottom: 6),style:insideShadowEffect,padding: EdgeInsets.all(5),child:FittedBox(child:Text("00:00:00",style:Theme.of(context).textTheme.headline6,)) ,)
              ],),
            )
          ,),

        Neumorphic(style: insideShadowEffect,margin: EdgeInsets.all(15),
          child:
            Container(height: 320,width: 350,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Container(padding:EdgeInsets.only(top:10,left: 25),
                  child: Text("Current:",style:TextStyle(fontFamily: "Product Sans", color: Colors.grey, fontSize: 20),),
                ),
                Row(children: [
                  Card(margin:EdgeInsets.only(left:15,right: 15),elevation:10,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),child: Padding(padding:EdgeInsets.all(15),child: FittedBox(child: Text("Subject",style:TextStyle(fontFamily: "Product Sans",fontSize:20,color: Theme.of(context).primaryColor))))),
                  Neumorphic(style:insideShadowEffect2,padding: EdgeInsets.all(15),child:FittedBox(child:Text("Chemistry",style:TextStyle(fontFamily:"Product Sans",fontSize: 20,color: Theme.of(context).accentColor))) ,),
                ],),
                Row(children: [
                  Card(margin:EdgeInsets.only(right:15,left:15),elevation:10,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),child: Padding(padding:EdgeInsets.all(15),child: FittedBox(child:Text("Faculty",style:TextStyle(fontFamily: "Product Sans",fontSize:20,color: Theme.of(context).primaryColor))))),
                  Neumorphic(margin:EdgeInsets.only(top:8),style:insideShadowEffect2,padding: EdgeInsets.all(15),child:FittedBox(child:Text("Dalton",style:TextStyle(fontFamily:"Product Sans",fontSize: 20,color: Theme.of(context).accentColor))) ,),


                ],),
                Container(padding:EdgeInsets.only(top:10,left: 25),
                  child: Text("Upcoming:",style:TextStyle(fontFamily: "Product Sans", color: Colors.grey, fontSize: 20),),
                ),
                Row(children: [
                  Row(children: [
                    Card(margin:EdgeInsets.only(left:15,right: 15),elevation:10,shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),child: Padding(padding:EdgeInsets.all(15),child: FittedBox(child: Text("Subject",style:TextStyle(fontFamily: "Product Sans",fontSize:20,color: Theme.of(context).primaryColor))))),
                    Neumorphic(style:insideShadowEffect2,padding: EdgeInsets.all(15),child:FittedBox(child:Text("Physics",style:TextStyle(fontFamily:"Product Sans",fontSize: 20,color: Theme.of(context).accentColor))) ,),
                  ],),


                ],),
                Row(children: [
                  Card(margin:EdgeInsets.only(right:15,left:15),elevation:10,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),child: Padding(padding:EdgeInsets.all(15),child: FittedBox(child:Text("Faculty",style:TextStyle(fontFamily: "Product Sans",fontSize:20,color: Theme.of(context).primaryColor))))),
                  Neumorphic(margin:EdgeInsets.only(top:8),style:insideShadowEffect2,padding: EdgeInsets.all(15),child:FittedBox(child:Text("Issac",style:TextStyle(fontFamily:"Product Sans",fontSize: 20,color: Theme.of(context).accentColor))) ,),


                ],),

              ],),
            )
        )],),
        ),



    );
  }
}
