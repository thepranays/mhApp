import 'package:flutter/material.dart';
import 'package:mhapp_flutter/widgets/Drawer.dart';
import '../models/Faculty.dart';
import '../widgets/Drawer.dart';
import '../widgets/FacultyStatus.dart';

class FacultyStatusPage extends StatefulWidget {
  static const facultyStatusPagePath = "/facultyStatusPagePath";



  @override
  _FacultyStatusPageState createState() => _FacultyStatusPageState();
}

class _FacultyStatusPageState extends State<FacultyStatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title:Text("Faculty Status",style:TextStyle(fontFamily: "SourceSansPro",color:Colors.white)),),
          drawer:Drawer(child:DrawerWidget(),),
          body:
            FacultyStatus()



    );
  }
}
