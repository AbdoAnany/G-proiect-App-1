import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../appTheme.dart';
class EditDRAssignment extends StatelessWidget{
  String timenow = DateFormat.yMMMd().format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppTheme.bg,
      appBar: AppTheme.Abar("EDIT ASSIGNMENT", context),
      body: ListView(
        children: <Widget>[
          Container(
            color: AppTheme.bgt,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppTheme.bg,
                  ),
                  child: TextField(
                    style: TextStyle(
                        color: AppTheme.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                    // textInputAction: TextInputAction.newline
                    keyboardType: TextInputType.multiline,
                    maxLines: 1000,
                    cursorColor: Colors.white,
                    textInputAction: TextInputAction.join,
                    decoration: InputDecoration(
                      hintText: 'Whats in your mind... ',
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.white70),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  padding: EdgeInsets.only(right: 15, left: 15),
                  //color: Colors.grey[700],
                  width: double.infinity,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Total Mark',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Expanded(
                        child: Container(

                          padding:EdgeInsets.only(right: 5,left: 5) ,alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2,
                          height: 30,
                          decoration: BoxDecoration(
                              color: AppTheme.bg,
                              boxShadow: [BoxShadow(color:Colors.white70,spreadRadius:0.5 )]
                          ),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            keyboardType: TextInputType.number,
                            //  controller: pass,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Put Your Mark",
                                hintStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w100)),
                            autocorrect: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  padding: EdgeInsets.only(right: 15, left: 15),
                  //color: Colors.grey[700],
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'DeadLine',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding:EdgeInsets.only(right: 5,left: 5) ,alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2,
                          height: 30,
                          decoration: BoxDecoration(
                              color: AppTheme.bg,
                              boxShadow: [BoxShadow(color:Colors.white70,spreadRadius:0.5 )]
                          ),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            keyboardType: TextInputType.datetime,
                            //  controller: pass,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: timenow,
                                hintStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w100)),
                            autocorrect: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Fill #1 Name',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.clear),
                      color: Colors.red,
                      iconSize: 20,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Fill #1 Name',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.clear),
                      color: Colors.red,
                      iconSize: 20,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Fill #1 Name',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.clear),
                      color: Colors.red,
                      iconSize: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                        color: AppTheme.bu,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(color: Colors.white, blurRadius: 1)
                        ]),
                    child: FlatButton(
                      child: Text("UPLOAD FLILE",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          )),
                      onPressed: () {
                        //   Navigator.of(context).pushNamed('/signup');
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(
                      color: AppTheme.bu,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(color: Colors.white, blurRadius: 1)
                      ]),
                  child: FlatButton(
                    child: Text("POST",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        )),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed('/homwcourses');
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}