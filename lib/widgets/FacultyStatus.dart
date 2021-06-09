import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/Faculty.dart';

class FacultyStatus extends StatefulWidget {


  @override
  _FacultyStatusState createState() => _FacultyStatusState();
}

class _FacultyStatusState extends State<FacultyStatus> {
   final searchFaculty = new TextEditingController();
   bool containsCharBool = false;

  final facultyList = [
    new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"HCV",image:AssetImage("assets/images/hcv.jpeg")),
    new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"Mahajan",image:AssetImage("assets/images/hcv.jpeg")),
    new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"omkar",image:AssetImage("assets/images/hcv.jpeg")),
    new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"prasanna",image:AssetImage("assets/images/hcv.jpeg")),
    new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"pranay",image:AssetImage("assets/images/hcv.jpeg")),
    new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"sahil",image:AssetImage("assets/images/hcv.jpeg")),
    new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"HCV",image:AssetImage("assets/images/hcv.jpeg")),
    new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"HCV",image:AssetImage("assets/images/hcv.jpeg")),
    new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"HCV",image:AssetImage("assets/images/hcv.jpeg")),
    new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"HCV",image:AssetImage("assets/images/hcv.jpeg")),
    new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"HCV",image:AssetImage("assets/images/hcv.jpeg")),
    new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"Dalton",image:AssetImage("assets/images/hcv.jpeg")),new Faculty(division:"A3",grade: 12,floor:3,room:12,topic:"Gaseous Law",stream:"science",name:"Sandhya",image:AssetImage("assets/images/hcv.jpeg")),



  ];

  List<Faculty> filteredListFaculty(String search){
    if(!containsCharBool){
      return facultyList;
    }
    return facultyList.where((element){
      return element.name.toString().toLowerCase().contains(search,0);
    }).toList();
  }

  void containChar(String search){
    if(search.isNotEmpty){
      setState(() {
        this.containsCharBool=true;
        print('set state true');
      });

    }else {
      setState(() {
        containsCharBool = false;
        print('set state false');
      });
    }

  }


  @override
  Widget build(BuildContext context) {
    // return ListTile(leading:CircleAvatar(child:FittedBox(child: Image.asset("assets/images/hcv.jpeg",fit:BoxFit.fill,),),),
    // title:Text("Prof.HCV",style:TextStyle(color:Theme.of(context).primaryColor,fontFamily:"Product Sans"),)
    // ,subtitle:Text("Floor:2 Room:23",style:TextStyle(color:Theme.of(context).accentColor,fontFamily:"SourceSansPro"),),);

    return Scaffold(
      body: SafeArea(
        child: Container(

          child: SingleChildScrollView(
              child: Column(children: [
                TextField(style:TextStyle(fontFamily:"SourceSansPro",),controller:searchFaculty ,onChanged:containChar,decoration:InputDecoration(
                    hintText:"Search",prefixIcon:Icon(Icons.search)),)

                ,
                  ...filteredListFaculty(searchFaculty.text).map((faculty){
                return
                Card(elevation: 10,shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                  child: ExpansionTile(title:Text("Prof.${faculty.name}",style:TextStyle(color:Theme.of(context).primaryColor,fontFamily:"Product Sans"))
                  ,leading:CircleAvatar(radius:30,backgroundImage:AssetImage("assets/images/hcv.jpeg")),
                  subtitle: Text("Floor:${faculty.floor} Room:${faculty.room} ",style:TextStyle(color:Theme.of(context).accentColor,fontFamily:"SourceSansPro"),),
                  children: [Text("Class:${faculty.grade} Div:${faculty.division} ${faculty.stream}",style:TextStyle(color:Theme.of(context).accentColor,fontFamily:"SourceSansPro")),
                  Text("Topic:${faculty.topic} ",style:TextStyle(color:Theme.of(context).accentColor,fontFamily:"SourceSansPro"))
                  ],
                  ),
                );
                }).toList()
              ],),
    ),
        ),
      ));
    

  }
}
