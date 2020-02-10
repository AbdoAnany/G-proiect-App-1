import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:project2/appTheme.dart';
import 'package:project2/coursespage/homecourses.dart';

import 'home_courses.dart';

class Courses extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CoursesState();
  }
}

class CoursesState extends State<Courses> {
  List<String> name = [
    "Computer Vision",
    "Securtiy S",
    "Software Enginering",
    "Network Programing",
    "A I"
  ];
  bool isSelected = true;

  @override
  void initState() {
    setCoursesItem();
    super.initState();
  }
  List<Courselist> courselist;
  void setCoursesItem() {
    courselist = [
      Courselist(
        lable: 'Computer Vision',
        index: CourseIndex.CV,
        avilabe: true,
        FristLiter: 'CV',
        move: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeCourse())),
      ),
      Courselist(
        lable: 'Securtiy',
        index: CourseIndex.S,
        avilabe: false,
        FristLiter: 'S',
        move: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeCourse())),
      ),
      Courselist(
        lable: 'Softeware Enginering',
        index: CourseIndex.SE,
        avilabe: true,
        FristLiter: 'SE',
        move: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeCourses())),
      ),
      Courselist(
        lable: 'Network Programming',
        index: CourseIndex.NP,
        avilabe: true,
        FristLiter: 'NP',
        move: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeCourses())),
      ),
      Courselist(
        lable: 'Artificial Intelligence',
        index: CourseIndex.AI,
        avilabe: true,
        FristLiter: 'AI',
        move: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeCourses())),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppTheme.bg,
        appBar:AppTheme.Abar("Courses",context),

        body:Container(

          padding: EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Expanded(
              child: ListView.builder(
                  itemCount: name.length,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return Container(
                     // padding: EdgeInsets.all(5),
                      alignment: Alignment.centerLeft,
                      child: CourseItem(courselist[index]),
                    );
                  }),
            ),
          ],
        ),)
      ),
    );
  }

  Widget CourseItem(Courselist courseslist) {
    return Material(
      color: AppTheme.transparent,
      child: courseslist.avilabe?
      FlatButton(
          onPressed: courseslist.move,
          padding: EdgeInsets.all(25),
          color: isSelected ? AppTheme.bg : AppTheme.bu,
          child: Column(

            children: <Widget>[

              Container(
                alignment: Alignment.center,
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  //   border: Border.all(width: 10, color: Colors.white)
                ),
                child: Text(
                  courseslist.FristLiter,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.bu,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(courseslist.lable,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 20))
            ],
          )

      )
          :
      FlatButton(
          onPressed: (){},
          padding: EdgeInsets.all(25),
          color: isSelected ? AppTheme.bg : AppTheme.bu,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 80,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  //   border: Border.all(width: 10, color: Colors.white)
                ),
                child: Text(
                  courseslist.FristLiter,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red[700],
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(courseslist.lable+" is Blocked",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.red[700],
                      fontSize: 20))
            ],
          )

      )
    );
  }
}

enum CourseIndex {
  CV,
  S,
  SE,
  NP,
  AI,
}

class Courselist {
  String lable;

  Icon icon;
  String FristLiter;
  bool avilabe;
  CourseIndex index;
  Function move;

  Courselist(
      {this.lable = '',
      this.icon,
      this.FristLiter,
      this.avilabe = true,
      this.index,
      this.move});
}
