import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project2/appTheme.dart';

class Help extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HelpState();
  }
}

class HelpState extends State<Help> {
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
        appBar:AppTheme.Abar("HELP", context),
        backgroundColor: AppTheme.bg,
        body: Container(
          alignment: Alignment.center,
          // padding: EdgeInsets.only(top: 20),
          child: ListView(

            children: <Widget>[
              Container(
                alignment: Alignment.center,
                color: AppTheme.bg,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 50,
                        decoration: BoxDecoration(
                          color:AppTheme.bgt,
                          borderRadius: BorderRadius.all(Radius.circular(5)),

                        ),
                        child: TextField(
                          style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),keyboardType:TextInputType.number,
                          //  controller: pass,
                          decoration: InputDecoration(

                              border: InputBorder.none,
                              hintText: "Subject",hintStyle:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w100) ),
                          autocorrect: true,
                        ),
                      ),
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
                              hintText: "Enter Your Message ",hintStyle:TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w100) ),
                          autocorrect: true,
                        ),
                      ),
                    ),



                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.height / 10,
                  decoration: BoxDecoration(
                      color: AppTheme.bu,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(color: Colors.white, blurRadius: 1)
                      ]),
                  child: FlatButton(
                    child: Text(
                        "ENTER",
                        style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold,)
                    ),onPressed: (){  Navigator.of(context).pushNamed('/home');
                  },
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
