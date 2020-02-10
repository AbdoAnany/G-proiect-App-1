import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project2/appTheme.dart';
import 'package:project2/assignment/deliverdassig.dart';

import '../assignment/assignment_contant.dart';
import '../assignment/edit_dr_assignment.dart';


class Notifications extends StatefulWidget{
  @override

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NotificatinState();
  }

}

class  NotificatinState extends State<Notifications>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppTheme.bg,
      appBar: AppBar(
        backgroundColor:AppTheme.bg,elevation: 0,centerTitle: true,
        title: Text('Notification',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
        //centerTitle: true,
      ),
      body: ListView(

        children: <Widget>[
          Container(
              margin: EdgeInsets.only(top: 15,bottom: 15),
              padding: EdgeInsets.only(top: 15,bottom: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.fromBorderSide(BorderSide(color: Colors.white24)),
                color: AppTheme.bu,
              ),
              child:FlatButton(
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowAssignment())),
                child:  Column(
                  children: <Widget>[
                    Text('Saeed Shosha',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                    Text('Section: ',style: TextStyle(color: Colors.white,fontSize: 16),),
                    Text(DateFormat.yMMMd().format(DateTime.now()),
                      style: TextStyle(fontSize: 16,color: Colors.white),),
                  ],
                ),
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 15,bottom: 15),
              padding: EdgeInsets.only(top: 15,bottom: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.fromBorderSide(BorderSide(color: Colors.white24)),
                color: AppTheme.bgt,
              ),
              child: FlatButton(
                child: Column(
                  children: <Widget>[
                    Text('Saeed Shosha',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                    Text('Section: ',style: TextStyle(color: Colors.white,fontSize: 16),),
                    Text(DateFormat.yMMMd().format(DateTime.now()),
                      style: TextStyle(fontSize: 16,color: Colors.white),),
                  ],
                ),
              )
          ),
          Container(
            margin: EdgeInsets.only(top: 15,bottom: 15),
            padding: EdgeInsets.only(top: 15,bottom: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.fromBorderSide(BorderSide(color: Colors.white24)),
              color: AppTheme.bgt,
            ),
            child: Column(
              children: <Widget>[
                Text('Saeed Shosha',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                Text('Section: ',style: TextStyle(color: Colors.white,fontSize: 16),),
                Text(DateFormat.yMMMd().format(DateTime.now()),
                  style: TextStyle(fontSize: 16,color: Colors.white),),
              ],
            ),
          ),
        ],
      ),
    );
  }


}