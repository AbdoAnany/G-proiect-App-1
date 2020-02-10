


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:project2/appTheme.dart' as prefix0;
import 'package:project2/coursespage/addpost.dart';
import 'package:project2/coursespage/homecourses.dart';
import 'package:project2/hleper/profile.dart';
import 'package:project2/hleper/save.dart';
import 'package:project2/entrypages/signin.dart';
import 'package:project2/entrypages/signup.dart';

import '../appTheme.dart';
import '../coursespage/comment.dart';
import '../coursespage/courses.dart';
import '../hleper/help.dart';
import '../coursespage/home.dart';


class ID extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new Home(),
        '/profile': (BuildContext context) => new Profile(),
        '/courses': (BuildContext context) => new Courses(),
        '/signin': (BuildContext context) => new Signin(),
        '/signup': (BuildContext context) => new Signup(),
        '/save': (BuildContext context) => new Save(),
        '/addpost': (BuildContext context) => new AddPost(),
        '/help': (BuildContext context) => new Help(),
        '/homwcourses': (BuildContext context) => new HomeCourses(),
        '/comment': (BuildContext context) => new Comment(),


      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IDPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class IDPage extends StatefulWidget {
  IDPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _IDState createState() => _IDState();
}

class _IDState extends State<IDPage> {


 bool flag=true;
  TextEditingController id = new TextEditingController();
bool cheakdata(){

  if(id.text=="31717"){
    flag=true;
    return true;}
  else{
    id.clear();
  flag=false;
    return false;}
}
@override

  @override

  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    cheakdata();
  }


  @override
  Widget build(BuildContext context) {
  AppTheme A=new  AppTheme();

    return Scaffold(

      body: Container(
          color:AppTheme.bg,
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 40,),
                  AppTheme.logo,
                  SizedBox(height: 40,),
                  Text("Who Are You", style: AppTheme.Question),
                  SizedBox(height: 30,),
                  AppTheme.inputfild('Code',context,AppTheme.keyboardTypenumber,AppTheme.IconId,id,true),
                  SizedBox(height: 100,),
                  AppTheme.Button1("Enter",context,Signup(),true),
                ],
              )
            ],
          )

      ),);
  }
}
