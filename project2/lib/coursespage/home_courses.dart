import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/appTheme.dart';
import 'package:project2/coursespage/lecture.dart';
import 'package:project2/coursespage/section.dart';
import 'package:project2/entrypages/idpage.dart';

class HomeCourse extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<HomeCourse>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Course",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                Text(
                  "Computer Vision",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            centerTitle: true,
            leading: Container(
              child: IconButton(
                icon: Icon(
                  Icons.fast_rewind,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              color: AppTheme.bu,
            ),actions: <Widget>[
              Container(
          child: IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          color: AppTheme.bu,
        )],
            backgroundColor: AppTheme.bg,
            bottom: new TabBar(
                controller: controller,
                indicatorColor: AppTheme.bu,
                tabs: <Tab>[
                  new Tab(
                    text: 'Lectures',
                  ),
                  new Tab(
                    text: 'Sections',
                  ),
                ])),
        body: new TabBarView(controller: controller, children: <Widget>[
          new Lectures(),
          new Section(),
        ]));
  }
}
