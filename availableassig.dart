import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AvailableAssignment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AvailableAssignmentState();
  }
}
class AvailableAssignmentState extends State<AvailableAssignment> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        backgroundColor: Colors.grey[900],
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 15,bottom: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.grey[700],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Computer Vision',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Assignment  #',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(DateFormat.yMMMd().format(DateTime.now()),
                            style: TextStyle(color: Colors.white)),
                        Row(
                          children: <Widget>[
                            Text('Deadline: ',
                                style: TextStyle(color: Colors.white)),

                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text('Total Mark: ',
                                style: TextStyle(color: Colors.white)),
                          ],
                        )
                      ],
                    ),
                  ),
            Container(
              margin: EdgeInsets.only(top: 15,bottom: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.grey[700],
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Computer Vision',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Assignment  #',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(DateFormat.yMMMd().format(DateTime.now()),
                      style: TextStyle(color: Colors.white)),
                  Row(
                    children: <Widget>[
                      Text('Deadline: ',
                          style: TextStyle(color: Colors.white)),

                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('Total Mark: ',
                          style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15,bottom: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.grey[700],
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Computer Vision',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'Assignment  #',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text(DateFormat.yMMMd().format(DateTime.now()),
                      style: TextStyle(color: Colors.white)),
                  Row(
                    children: <Widget>[
                      Text('Deadline: ',
                          style: TextStyle(color: Colors.white)),

                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('Total Mark: ',
                          style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
                ],
        ),
      );

  }
}
