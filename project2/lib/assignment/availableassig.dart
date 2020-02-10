import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project2/appTheme.dart';
import 'package:project2/assignment/reciveassiggggn.dart';

class AvailableAssignment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AvailableAssignmentState();
  }
}
class AvailableAssignmentState extends State<AvailableAssignment> {
  static  String timenow=DateFormat.yMMMd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        backgroundColor: AppTheme.bg,
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                width: MediaQuery.of(context).size.width/3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.transparent,
                ),
                padding: EdgeInsets.all(10),
                child:FlatButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ReciveAssignment())),
                  color: Colors.transparent,
                  child:  Row(
                    children: <Widget>[
                      AppTheme.logoname("CV", 50.0),

                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color:AppTheme.bgt,
                        ),

                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Assignment  #',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(timenow,
                                    style: TextStyle(color: Colors.white)),
                                Text('Deadline: ',
                                    style: TextStyle(color: Colors.white)),
                                Text('Total Mark: ',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            SizedBox(width: 20,),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.clear),
                              color: Colors.red,
                              iconSize: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                width: MediaQuery.of(context).size.width/3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.transparent,
                ),
                padding: EdgeInsets.all(10),
                child:FlatButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ReciveAssignment())),
                  color: Colors.transparent,
                  child:  Row(
                    children: <Widget>[
                      AppTheme.logoname("CV", 50.0),

                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color:AppTheme.bgt,
                        ),

                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Assignment  #',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(timenow,
                                    style: TextStyle(color: Colors.white)),
                                Text('Deadline: ',
                                    style: TextStyle(color: Colors.white)),
                                Text('Total Mark: ',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            SizedBox(width: 20,),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.clear),
                              color: Colors.red,
                              iconSize: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                width: MediaQuery.of(context).size.width/3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.transparent,
                ),
                padding: EdgeInsets.all(10),
                child:FlatButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ReciveAssignment())),
                  color: Colors.transparent,
                  child:  Row(
                    children: <Widget>[
                      AppTheme.logoname("CV", 50.0),

                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color:AppTheme.bgt,
                        ),

                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Assignment  #',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(timenow,
                                    style: TextStyle(color: Colors.white)),
                                Text('Deadline: ',
                                    style: TextStyle(color: Colors.white)),
                                Text('Total Mark: ',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            SizedBox(width: 20,),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.clear),
                              color: Colors.red,
                              iconSize: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),
            Container(
                margin: EdgeInsets.only(top: 15, bottom: 15),
                width: MediaQuery.of(context).size.width/3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.transparent,
                ),
                padding: EdgeInsets.all(10),
                child:FlatButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => ReciveAssignment())),
                  color: Colors.transparent,
                  child:  Row(
                    children: <Widget>[
                      AppTheme.logoname("CV", 50.0),

                      Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color:AppTheme.bgt,
                        ),

                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Assignment  #',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(timenow,
                                    style: TextStyle(color: Colors.white)),
                                Text('Deadline: ',
                                    style: TextStyle(color: Colors.white)),
                                Text('Total Mark: ',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                            SizedBox(width: 20,),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.clear),
                              color: Colors.red,
                              iconSize: 20,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ),

                ],
        ),
      );

  }
}
