import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../appTheme.dart';

class Block extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BlokState();
}

class BlokState extends State<Block> {
  @override
  Widget build(BuildContext context) {
    bool blochflag = true;

    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppTheme.Abar( "BLOCK / UNBLOCK", context),
        backgroundColor: AppTheme.bg,
        body: ListView(
          children: <Widget>[
            Divider(
              height: 1,
              color: AppTheme.bu,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 100, bottom: 100, left: 20),
              width: MediaQuery.of(context).size.width,
              color: AppTheme.bgt,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "Courses ID  : ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          width: MediaQuery.of(context).size.width / 2,
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppTheme.bg,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
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
                                hintText: "Enter Courses ID",
                                hintStyle: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white30,
                                    fontWeight: FontWeight.w100)),
                            autocorrect: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Student ID  :  ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          width: MediaQuery.of(context).size.width / 2,
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppTheme.bg,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
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
                                hintText: "Enter Student ID",
                                hintStyle: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white30,
                                    fontWeight: FontWeight.w100)),
                            autocorrect: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Block Time  : ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Container(
                          padding: EdgeInsets.only(left: 10),
                          width: MediaQuery.of(context).size.width / 2,
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppTheme.bg,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
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
                                hintText: "Enter Block Time ",
                                hintStyle: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white30,
                                    fontWeight: FontWeight.w100)),
                            autocorrect: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 1,
              color: AppTheme.bu,
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  !(blochflag)
                      ? Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                              color: AppTheme.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  topLeft: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(color: Colors.white, blurRadius: 1)
                              ]),
                          child: FlatButton(
                            child: Text("BLOCK",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: AppTheme.bu,
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {
                              //   Navigator.of(context).pushNamed('/signup');
                            },
                          ),
                        )
                      : Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                              color: AppTheme.bu,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  topLeft: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(color: Colors.white, blurRadius: 1)
                              ]),
                          child: FlatButton(
                            child: Text("BLOCK",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {},
                          ),
                        ),
                  SizedBox(
                    width: 2,
                  ),
                  (blochflag)
                      ? Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                              color: AppTheme.white,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(color: Colors.white, blurRadius: 1)
                              ]),
                          child: FlatButton(
                            child: Text("UNBLOCK",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: AppTheme.bu,
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {},
                          ),
                        )
                      : Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.height / 10,
                          decoration: BoxDecoration(
                              color: AppTheme.bu,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(30),
                                  topRight: Radius.circular(30)),
                              boxShadow: [
                                BoxShadow(color: Colors.white, blurRadius: 1)
                              ]),
                          child: FlatButton(
                            child: Text("UNBLOCK",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {},
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
