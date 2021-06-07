import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mhapp_flutter/screens/LoginPage.dart';

class RegisterPage extends StatelessWidget {
  static const String registerPath = "/register-page";

  void onTapLoginPage(BuildContext context){
    Navigator.of(context).popAndPushNamed(LoginPage.loginPagePath);
  }

  final insideShadowEffect = NeumorphicStyle(
      shape: NeumorphicShape.concave,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
      lightSource: LightSource.topLeft,
      color: Colors.grey.shade200
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(child: Container(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          SizedBox(height: 10),

          Center(child: Container(height: 100, width: 100,
              child: Image(image: AssetImage("assets/images/geilogo.png")))),

          Container(margin: EdgeInsets.only(left: 10),
              child: Text("WELCOME", style: Theme
                  .of(context)
                  .textTheme
                  .headline6)),
          Container(margin: EdgeInsets.only(left: 10),
              child: Text("Create your MH App Account",
                style: TextStyle(fontFamily: "SourceSansPro", color: Theme
                    .of(context)
                    .accentColor, fontSize: 15),)),
          Neumorphic(style: insideShadowEffect
              , margin: EdgeInsets.only(left: 10, right: 20, top: 20),
              child: TextField(style: TextStyle(fontFamily: "SourceSansPro"),
                  controller: null,
                  decoration: InputDecoration(
                    hintText: "Enter Your Full Name",
                    contentPadding: EdgeInsets.only(left: 10),
                  ))
          ),

          Row(children: <Widget>[
            Expanded(
              child: Neumorphic(style: insideShadowEffect,
                  margin: EdgeInsets.only(left: 10, top: 20),
                  child: Container(width: 100,
                    child: TextField(style: TextStyle(
                        fontFamily: "SourceSansPro"),
                        controller: null,
                        decoration: InputDecoration(
                          hintText: "Class",
                          contentPadding: EdgeInsetsDirectional.all(10),
                        )),
                  )
              ),
            ),
            Expanded(
              child: Neumorphic(style: insideShadowEffect,
                  margin: EdgeInsets.only(left: 10, top: 20),

                  child: Container(width: 20,
                    child: TextField(style: TextStyle(
                        fontFamily: "SourceSansPro"),
                        controller: null,
                        decoration: InputDecoration(
                          hintText: "Stream",
                          contentPadding: EdgeInsetsDirectional.all(10),
                        )),
                  )
              ),
            ),
            Expanded(
              child: Neumorphic(style: insideShadowEffect,
                  margin: EdgeInsets.only(left: 10, top: 20, right: 20),

                  child: Container(width: 100,
                    child: TextField(style: TextStyle(
                        fontFamily: "SourceSansPro"),
                        controller: null,
                        decoration: InputDecoration(
                          hintText: "Division",
                          contentPadding: EdgeInsetsDirectional.all(10),
                        )),
                  )
              ),
            ),
          ]),
          Neumorphic(style: insideShadowEffect,
              margin: EdgeInsets.only(left: 10, top: 20, right: 20),

              child: Container(
                child: TextField(style: TextStyle(fontFamily: "SourceSansPro"),
                    controller: null,
                    decoration: InputDecoration(
                      hintText: "Email Address",
                      contentPadding: EdgeInsetsDirectional.all(10),
                    )),
              )),
          Neumorphic(style: insideShadowEffect,
              margin: EdgeInsets.only(left: 10, top: 20, right: 20),

              child: Container(
                child: TextField(obscureText: true,
                    style: TextStyle(fontFamily: "SourceSansPro"),
                    controller: null,
                    decoration: InputDecoration(
                      hintText: "Password",
                      contentPadding: EdgeInsetsDirectional.all(10),
                    )),
              )),
          Neumorphic(style: insideShadowEffect,
            margin: EdgeInsets.only(left: 10, top: 20, right: 20),

            child: Container(
              child: TextField(obscureText: true,
                  style: TextStyle(fontFamily: "SourceSansPro"),
                  controller: null,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    contentPadding: EdgeInsetsDirectional.all(10),
                  )),
            ),
          ),

          Container(margin: EdgeInsets.only(top: 20),
            child: Center(
              child: ElevatedButton(style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  backgroundColor: MaterialStateProperty.all(Theme
                      .of(context)
                      .primaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Theme
                              .of(context)
                              .primaryColor))
                  )),
                  onPressed: () {},
                  child: Text("Sign Up", style: TextStyle(
                      fontFamily: "SourceSansPro",
                      fontSize: 20,
                      fontWeight: FontWeight.bold),)),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Text("Already have a account?",
                style: TextStyle(fontFamily: "SourceSansPro")),
            TextButton(onPressed: () {onTapLoginPage(context);},
                child: Text("Sign in", style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: "SourceSansPro",
                    color: Theme
                        .of(context)
                        .primaryColor),))
          ],)

        ],),
        )
        ));
  }
}