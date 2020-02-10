import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/appTheme.dart';
import 'package:project2/entrypages/idpage.dart';
import 'assignment_contant.dart';
import 'availableassig.dart' as first;
import 'availableassig.dart';
import 'deliverdassig.dart' as second;
import 'deliverdassig.dart';

class AssignmentSTU extends StatefulWidget {
  @override
  AssignmentSTUState createState() => new AssignmentSTUState();
}

class AssignmentSTUState extends State<AssignmentSTU> with SingleTickerProviderStateMixin {


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
            title: new Text("Assignment",style: TextStyle(fontSize: 25,color: Colors.white),),
            centerTitle: true,
            backgroundColor: AppTheme.bg,
            bottom: new TabBar(
                controller: controller,indicatorColor: AppTheme.bu,
                tabs: <Tab>[
                  new Tab(text: 'Available',),
                  new Tab(text: 'Deliverd',),

                ]
            )
        ),
        body: new TabBarView(
            controller: controller,
            children: <Widget>[
              new AvailableAssignment(),
              new DeliverdAssignment(),





            ]
        )
    );
  }
}