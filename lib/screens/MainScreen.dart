import 'package:mhapp_flutter/screens/AboutUsScreen.dart';
import 'package:mhapp_flutter/screens/FacultyStatusPage.dart';

import '../widgets/Drawer.dart';
import '../widgets/Dashboard.dart';
import '../widgets/Notices.dart';
import '../widgets/Syllabus.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';


class MainScreen extends StatefulWidget {
  static const String  homePagePath ="/home-page";
  @override
  MainScreenState createState() => MainScreenState();

}


class MainScreenState extends State<MainScreen> {
  int selectedItem = 0;


  void changeMainScreen(int index) {
    setState(() {
      this.selectedItem = index;
    });
  }


  final mainScreenWidgets = <Widget>[
    Dashboard(),
    Notices(),
    Syllabus(),

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData( primaryColor:Color.fromRGBO(25, 53, 102,1),accentColor:Color.fromRGBO(151,167, 195, 1),
      fontFamily: "Product Sans",textTheme:ThemeData.light().textTheme.copyWith(headline5:TextStyle(fontFamily: "Product Sans",color:Theme.of(context).primaryColor,fontSize: 15) ,
          headline4: TextStyle(fontFamily:"SourceSansPro",color:Colors.white,fontWeight:FontWeight.w800,fontSize: 30.0)
          ,headline6: TextStyle(fontFamily:"SourceSansPro",color:Color.fromRGBO(25, 53, 102,1),fontWeight:FontWeight.w800,fontSize: 30.0))
      ,appBarTheme:AppBarTheme(backgroundColor:Color.fromRGBO(25, 53, 102,1),textTheme:Theme.of(context).textTheme),
    ),
      routes: {MainScreen.homePagePath:(ctx)=>MainScreen(),
          FacultyStatusPage.facultyStatusPagePath:(ctx)=>FacultyStatusPage(),
          AboutUsScreen.aboutUsPath:(ctx) => AboutUsScreen(),

      },
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: Drawer(child: DrawerWidget()),
          appBar: AppBar(
            title: Text('MH APP',style:TextStyle(fontFamily: "SourceSansPro",color:Colors.white),),
            bottom: TabBar(indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(icon: Icon(Icons.dashboard), text: "Dashboard"),
                Tab(icon: Icon(Icons.notifications), text: "Notices"),
                Tab(icon: Icon(Icons.book), text: "Syllabus"),

              ],
            ),
          ),
          body: TabBarView(
            children: [
              Dashboard(),
              Notices(),
              Syllabus(),
            ],
          ),
        ),
      ),
    );
  }
}



    // return Scaffold(drawer: Drawer(child:DrawerWidget()),
 //     bottomNavigationBar: BottomNavigationBar(
 //       items: const <BottomNavigationBarItem>[
 //         BottomNavigationBarItem(icon:Icon(Icons.dashboard),label:"Dashboard",),
 //         BottomNavigationBarItem(icon:Icon(Icons.notifications),label:"Notices",),
 //         BottomNavigationBarItem(icon:Icon(Icons.book),label:"Syllabus")
 //
 //       ],
 //        selectedItemColor: Theme.of(context).accentColor,
 //       onTap: changeMainScreen,
 //      currentIndex: selectedItem,
 //       backgroundColor:Color.fromRGBO(25, 53, 102,1) ,
 //       unselectedItemColor:Colors.black,
 //       showUnselectedLabels: true,
 // ),
 //      body:mainScreenWidgets[selectedItem] ,
 //      appBar:AppBar(title:Text("MH APP",style: TextStyle(color: Colors.white,fontFamily:"SourceSansPro",fontSize:20),),
 //      bottom: ,));




