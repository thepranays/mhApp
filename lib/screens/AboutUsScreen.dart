import 'package:flutter/material.dart';
import 'package:mhapp_flutter/widgets/Drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsScreen extends StatelessWidget {

  static const String aboutUsPath = "/aboutus-path";

  //Async cuz we dnt want our UI To be broke
  //When you await an asynchronous function, the execution of the code within the caller suspends while the async operation is executed.
  //When the operation is completed, the value of what was awaited is contained within a Future object.
   launchGithubPranay() async {
    const url = 'https://github.com/thepranays/mhApp';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(drawer:DrawerWidget(),appBar: AppBar(title:Text("About Us",style:TextStyle(fontFamily: "SourceSansPro",color:Colors.white))),
    body: SafeArea(
      child:Column(children: [
        Padding(padding:EdgeInsets.all(10),
          child: Card(color:Theme.of(context).accentColor,child:Container(padding:EdgeInsets.all(10),
            child: Text("We came across this idea in our initial high school days.\nYou Can Contribute To This Project Too!\n"
                "Github Repository Link is attached below,Contact us!\nWe Expecting You <3",
              style:TextStyle(fontFamily:"Product Sans",fontSize:20,),),
          ),),
        ),
        Card(elevation:10,child:ExpansionTile(title:Text("Omkar Chavan"),subtitle:Text("CEO,UI Designer"),),),
        Card(elevation:10,child:ExpansionTile(title:Text("Prasanna Tribhuvan"),subtitle:Text("COO,Data Manager"),),),
        Card(elevation:10,child:ExpansionTile(leading:CircleAvatar(radius:30,backgroundImage:AssetImage("assets/images/cto.jpg")),
          title:Text("Pranay Payal",style:TextStyle(fontFamily:"SourceSansPro"),),subtitle:Text("CTO,Senior Dev",style:TextStyle(fontFamily:"Product Sans"),)
          ,children: [
            Row(mainAxisAlignment:MainAxisAlignment.center,children: [
              GestureDetector(child:CircleAvatar(radius:20,backgroundImage:AssetImage("assets/images/github.png")),
              onTap: launchGithubPranay),

              GestureDetector(child: CircleAvatar(radius:20,backgroundImage:AssetImage("assets/images/insta.jpg")),
              onTap:(){} ),
              GestureDetector(child: CircleAvatar(radius:20,backgroundImage:AssetImage("assets/images/twitter.jpg")),
              onTap:(){} ),
            ],)
          ],),),

      ],)
    ),);
  }
}
