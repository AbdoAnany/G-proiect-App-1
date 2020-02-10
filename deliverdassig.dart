import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DeliverdAssignment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DeliverdAssignmentState();
  }
}
class DeliverdAssignmentState extends State<DeliverdAssignment> {
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Computer Vision',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed:(){},
                        icon: Icon(Icons.clear),color: Colors.red,iconSize: 30,
                      ),
                    ],
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
                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Total Mark: ',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Computer Vision',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed:(){},
                        icon: Icon(Icons.clear),color: Colors.red,iconSize: 30,
                      ),
                    ],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Computer Vision',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed:(){},
                        icon: Icon(Icons.clear),color: Colors.red,iconSize: 30,
                      ),
                    ],
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