import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project2/appTheme.dart';

class AddPost extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AddPostState();
  }
}

class AddPostState extends State<AddPost> {
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
              image: AssetImage('assets/Background.png'), fit: BoxFit.cover)),
    );
    bool isSelected = false;
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "ADD POST",
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
              SizedBox(
                height: 40,
              ),
              Container(
                color: AppTheme.bg,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                        Text(name[0],style: TextStyle(fontSize: 20,color: Colors.white),),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: MediaQuery.of(context).size.height/2,
                        decoration: BoxDecoration(
                          color:AppTheme.bgt,
                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),keyboardType:TextInputType.text,maxLines: 1000,
                          //  controller: pass,
                          decoration: InputDecoration(

                              border: InputBorder.none,
                              hintText: "Whats in your mind ?",hintStyle:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w100) ),
                          autocorrect: true,
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width / 2.5,
                            height: 50,
                            decoration: BoxDecoration(
                                color: AppTheme.bu,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(color: Colors.white, blurRadius: 1)
                                ]),
                            child: FlatButton(
                              child: Text(
                                  "UPLOAD FILE",
                                  style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.w500,)
                              ),onPressed: (){  Navigator.of(context).pushNamed('/homecourses');
                            },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            width: MediaQuery.of(context).size.width / 3,
                            height: 50,
                            decoration: BoxDecoration(
                                color: AppTheme.bu,
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(color: Colors.white, blurRadius: 1)
                                ]),
                            child: FlatButton(
                              child: Text(
                                  "POST",
                                  style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.w500,)
                              ),onPressed: (){  Navigator.of(context).pushNamed('/homecourses');
                            },
                            ),
                          ),
                        ),

                      ],
                    )



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
