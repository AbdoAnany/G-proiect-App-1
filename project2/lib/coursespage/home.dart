import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project2/appTheme.dart';
import 'package:project2/assignment/assignment_stu.dart';
import 'package:project2/assignment/availableassig.dart';
import 'package:project2/assignment/deliverdassig.dart';
import 'package:project2/main.dart';
import 'package:project2/hleper/profile.dart';
import 'package:project2/hleper/save.dart';
import 'package:project2/hleper/notification.dart';

import '../assignment/addassignment.dart';
import '../assignment/assinment_dr.dart';
import '../hleper/block.dart';
import 'courses.dart';
import '../hleper/help.dart';
import '../entrypages/idpage.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return HomeState();
  }
}

class HomeState extends State<Home> {
  List<Text> info = [
    Text(
      'Abd Elrahman Anany',
      style: AppTheme.infoLabletitle,
    ),
    Text('Computer Science', style: AppTheme.infoLable),
    Text("Student", style: AppTheme.infoLable),
    Text('Fourth Grade - Frist Semester', style: AppTheme.infoLable),
  ];
  List<HomeList> homeList;
  @override
  void initState() {
    setHomeList();
    super.initState();
  }

  void setHomeList() {
    homeList = [

      HomeList(
          icon: Icon(
            Icons.portrait,
            color: AppTheme.transparent,
            size: 0,
          ),
          avilabe: true,
          index: HomeIndex.Edit,
          lable: "",
          move: () {

          }),
      HomeList(
          icon: Icon(
            Icons.portrait,
            color: AppTheme.white,
            size: 40,
          ),
          avilabe: true,
          index: HomeIndex.Edit,
          lable: "Edit Profile",
          move: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Profile(),
              ),
            );
          }),
      HomeList(
        icon: Icon(
          Icons.school,
          color: AppTheme.white,
          size: 40,
        ),
        avilabe: true,
        index: HomeIndex.Edit,
        lable: "Courses",
        move: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Courses(),
          ),
        ),
      ),
      HomeList(
        icon: Icon(
          Icons.assignment,
          color: AppTheme.white,
          size: 40,
        ),
        avilabe: true,
        index: HomeIndex.Edit,
        lable: "Assignments",
        move: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AssignmentDr(),
          ),
        ),
      ),
      HomeList(
        icon: Icon(
          Icons.assignment,
          color: AppTheme.white,
          size: 40,
        ),
        avilabe: true,
        index: HomeIndex.Edit,
        lable: "Assignments STU",
        move: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AssignmentSTU(),
          ),
        ),
      ),
      HomeList(
        icon: Icon(
          Icons.save,
          color: AppTheme.white,
          size: 40,
        ),
        avilabe: true,
        index: HomeIndex.Edit,
        lable: "Saved Posts",
        move: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Save(),
          ),
        ),
      ),
      HomeList(
        icon: Icon(
          Icons.block,
          color: AppTheme.white,
          size: 40,
        ),
        avilabe: true,
        index: HomeIndex.Edit,
        lable: "Block/Unblock",
        move: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Block(),
          ),
        ),
      ),
      HomeList(
        icon: Icon(
          Icons.notifications,
          color: AppTheme.white,
          size: 40,
        ),
        avilabe: true,
        index: HomeIndex.Edit,
        lable: "Notifications",
        move: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Notifications(),
          ),
        ),
      ),
      HomeList(
        icon: Icon(
          Icons.settings,
          color: AppTheme.white,
          size: 40,
        ),
        avilabe: true,
        index: HomeIndex.Edit,
        lable: "Settings",
        move: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Profile(),
          ),
        ),
      ),
      HomeList(
        icon: Icon(
          Icons.help,
          color: AppTheme.white,
          size: 40,
        ),
        avilabe: true,
        index: HomeIndex.Edit,
        lable: "Help",
        move: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Help(),
          ),
        ),
      ),
      HomeList(
        icon: Icon(
          Icons.power_settings_new,
          color: AppTheme.white,
          size: 40,
        ),
        avilabe: true,
        index: HomeIndex.Edit,
        lable: "Sign Out",
        move: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ID(),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    String name = 'Abd Elrahman Anany';

    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.bg,
        body: Column(
          children: <Widget>[

            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: homeList.length,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(0),
                itemBuilder: (context, index) {

                  if(index==0){
                    return      Container(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          AppTheme.logoname("AA", 100.0),
                          info[0],
                          SizedBox(
                            height: 10,
                          ),
                          info[1],
                          info[2],
                          info[3],
                        ],
                      ),
                    );
                  }else{
                    return Container(
                      padding: EdgeInsets.only(left: 5),
                      alignment: Alignment.centerLeft,
                      child: homeListItem(homeList[index]),
                    );
                  }


                },
              ),
            )
          ],
        ),
      ),
    );
  }
}




Widget homeListItem(HomeList homeList) {


  return Container(

    color: AppTheme.transparent,
    child: homeList.avilabe
        ? FlatButton.icon(
            onPressed: homeList.move,
            icon: homeList.icon,
            padding: EdgeInsets.all(5),
            label: Text(
              homeList.lable,
              style: AppTheme.homeLable,
            ))
        : SizedBox(
            height: 0,
          ),
  );
}

enum HomeIndex {
  infoo,
  Edit,
  Courses,
  Assignments,
  Saved,
  Block,
  Notification,
  Setting,
  Help,
  LogOut,
}

class HomeList {
  Icon icon;
  String lable;
  bool avilabe;
  HomeIndex index;
  Function move;
  Widget widget;

  HomeList(
      {this.icon, this.lable = '', this.avilabe = true, this.index, this.move,this.widget});
}
