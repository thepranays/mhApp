import 'dart:ui';
import './screens/LoginPage.dart';
import './screens/RegisterPage.dart';
import './screens/MainScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';



void main(){
  runApp(HomePage());
}



class HomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return MaterialApp(theme:ThemeData( primaryColor:Color.fromRGBO(25, 53, 102,1),accentColor:Color.fromRGBO(151,167, 195, 1),
        fontFamily: "Product Sans",textTheme:ThemeData.light().textTheme.copyWith(headline5:TextStyle(fontFamily: "Product Sans",color:Theme.of(context).primaryColor,fontSize: 15) ,
            headline4: TextStyle(fontFamily:"SourceSansPro",color:Colors.white,fontWeight:FontWeight.w800,fontSize: 30.0)
            ,headline6: TextStyle(fontFamily:"SourceSansPro",color:Color.fromRGBO(25, 53, 102,1),fontWeight:FontWeight.w800,fontSize: 30.0))
    ,appBarTheme:AppBarTheme(backgroundColor:Color.fromRGBO(25, 53, 102,1),textTheme:Theme.of(context).textTheme),
    )

    ,home:MainScreen(),
        routes: {RegisterPage.registerPath:(ctx) => RegisterPage(),
                LoginPage.loginPagePath:(ctx) => LoginPage(),
                MainScreen.homePagePath:(ctx) => MainScreen(),


        }

    );}
}





