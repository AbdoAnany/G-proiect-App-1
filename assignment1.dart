import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'availableassig.dart' as first;
import 'deliverdassig.dart' as second;
import 'assignmentcontant.dart';

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {


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
            title: new Text("Assignment",style: TextStyle(fontSize: 24,color: Colors.white),),
            centerTitle: true,
            backgroundColor: Colors.grey[900],
            actions: <Widget>[
              IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShowAssignment()),);
              }),
            ],
            bottom: new TabBar(
                controller: controller,
                tabs: <Tab>[
                  new Tab(text: 'Available',),
                  new Tab(text: 'Deliverd',),
                ]
            )
        ),
        body: new TabBarView(
            controller: controller,
            children: <Widget>[
              new first.AvailableAssignment(),
              new second.DeliverdAssignment()
            ]
        )
    );
  }
}