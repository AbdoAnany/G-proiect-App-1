import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project2/appTheme.dart';

class Comment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CommentState();
  }
}

class CommentState extends State<Comment> {
  @override
  Widget build(BuildContext context) {
    List<String> name = [
      "Abd Elrahman Anany",
      "Computer Vision",
      "Securtiy S",
      "Software Enginering",
      "Network Programing",
      "A I"
    ];
    final post = Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Color(0xff343b45),
          image: DecorationImage(
              image: AssetImage('assets/bgg.png'), fit: BoxFit.cover)),
    );
    bool isSelected = false;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            " Comment",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 30,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            color: AppTheme.bg,
          ),
          backgroundColor: AppTheme.bg,
          elevation: 0,
        ),
        backgroundColor: AppTheme.bg,
        body: Container(
          alignment: Alignment.center,
          // padding: EdgeInsets.only(top: 20),
          child: ListView(
            children: <Widget>[

              Container(
                color: AppTheme.bg,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          height: 70,
                          margin: EdgeInsets.only(left: 15),
                          width: 70,
                          decoration: BoxDecoration(
                              color: AppTheme.bu,
                              shape: BoxShape.circle,
                              border:
                              Border.all(width: 5, color: Colors.white)),
                          child: Text(
                            "AA",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width / 1.5,
                            height: 150,
                            decoration: BoxDecoration(
                              color:AppTheme.bgt,
                              borderRadius: BorderRadius.all(Radius.circular(5)),

                            ),
                            child: TextField(

                              style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),keyboardType:TextInputType.text,maxLines: 1000,
                              //  controller: pass,
                              decoration: InputDecoration(

                                  border: InputBorder.none,
                                  hintText: "A",hintStyle:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w100) ),
                              autocorrect: true,
                            ),
                          ),
                        ),

                      ],
                    ),





                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
