import 'package:mhapp_flutter/screens/MainScreen.dart';

import 'RegisterPage.dart';
import 'MainScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class LoginPage extends StatelessWidget {

  static const String loginPagePath ="/login-page";

  //Buttons
  void onRegisterTap(BuildContext context){
    Navigator.of(context).pushNamed(RegisterPage.registerPath);

  }
  void onLoginTap(BuildContext context){
    Navigator.of(context).popAndPushNamed(MainScreen.homePagePath);
  }

  @override
  Widget build(BuildContext context) {
    final insideShadowEffect = NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),

        lightSource: LightSource.topLeft,
        color: Colors.grey.shade200
    );

    return Scaffold(body:
        SafeArea(
          child: SingleChildScrollView(padding: EdgeInsets.only(top:50,bottom: 50,right:30,left: 30),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
                Text("M H  A P P",style:Theme
                    .of(context)
                    .textTheme
                    .headline6),
              Container(width:100,height: 100,child: Image.asset("assets/images/geilogo.png",fit: BoxFit.cover,)),

              Text("Welcome",style:Theme
                  .of(context)
                  .textTheme
                  .headline6),
              Text("Let's get started",style:TextStyle(fontFamily: "SourceSansPro", color: Theme
                  .of(context)
                  .accentColor, fontSize: 15)),
              Neumorphic(style: insideShadowEffect
                  , margin: EdgeInsets.only(left: 10, right: 20, top: 20),
                  child: TextField(style: TextStyle(fontFamily: "SourceSansPro"),
                      controller: null,
                      decoration: InputDecoration(
                        hintText: "Email Address",
                        contentPadding: EdgeInsets.only(left: 10),
                      ))
              ),
              Neumorphic(style: insideShadowEffect
                  , margin: EdgeInsets.only(left: 10, right: 20, top: 20),
                  child: TextField(style: TextStyle(fontFamily: "SourceSansPro"),
                      controller: null,
                      decoration: InputDecoration(
                        hintText: "Password",
                        contentPadding: EdgeInsets.only(left: 10),
                      ))
              ),
              TextButton(onPressed: () {},
                  child: Text("Forgot password", style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: "SourceSansPro",
                      color: Theme
                          .of(context)
                          .primaryColor),)),
              Container(margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: ElevatedButton(style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                      backgroundColor: MaterialStateProperty.all(Theme
                          .of(context)
                          .primaryColor),
                      elevation:MaterialStateProperty.all(10),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                              side: BorderSide(color: Theme
                                  .of(context)
                                  .primaryColor))
                      )),
                      onPressed: () =>onLoginTap(context),
                      child: Text("Log in", style: TextStyle(
                          fontFamily: "SourceSansPro",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),)),
                ),
              ),
              TextButton(onPressed: ()=>onRegisterTap(context),
                  child: Text("Create new account ", style: TextStyle(
                      fontFamily: "SourceSansPro",
                      color: Theme
                          .of(context)
                          .accentColor),)),
            ],),
          ),
        )

    );

  }
}
