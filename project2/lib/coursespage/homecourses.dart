import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project2/appTheme.dart';

class HomeCourses extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeCoursesState();
  }
}

class HomeCoursesState extends State<HomeCourses> {
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
    bool isSelected = true;

    final post = Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Color(0xff343b45),
          image: DecorationImage(
              image: AssetImage('assets/bgg.png'), fit: BoxFit.cover)),
    );

    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Courses ",
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
              Text(
                name[1],
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              Container(
                color: AppTheme.bgt,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20,),
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
                                margin: EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: AppTheme.bu,
                                  shape: BoxShape.circle,
                                ),
                                width: 50,
                                height: 50,
                                child:
                                Text("AA", style: TextStyle(color: Colors.white,fontSize: 15)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(name[0]+"\n3 hrs",style: TextStyle(fontSize: 10,color: Colors.white),),

                            ],
                          ),
                          Container(
                            margin: EdgeInsets.all(15),
                            child: Text("Welcome In My First Comment @@@@@@@@@@@@@@@@",
                                style: TextStyle(color: Colors.white,fontSize: 10)),
                          ),
                          post,
                          Container(
                            height: 20,
                            width: MediaQuery.of(context).size.width,
                            color: AppTheme.bgt,padding: EdgeInsets.only(left: 20),
                            child:  Text(
                              "10k comment",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.left,
                            ) ,
                          ),

                          Row(
                            children: <Widget>[
                              FlatButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.comment,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  label: Text(
                                    "Comment",
                                    style: TextStyle(color: Colors.white,fontSize: 15),
                                  )),
                              FlatButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.file_download,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  label: Text(
                                    "DownLoad",
                                    style: TextStyle(color: Colors.white),
                                  )),
                              FlatButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                  label: Text(
                                    "Delete",
                                    style: TextStyle(color: Colors.white,fontSize: 10),
                                  )),
                            ],
                          )
                        ],
                      ),
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
