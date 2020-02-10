import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project2/appTheme.dart';
import 'package:project2/coursespage/home.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProfileState();
  }
}

class ProfileState extends State<Profile> {

  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController name = new TextEditingController();
  TextEditingController phone = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        appBar: AppTheme.Abar("Profile", context),
        backgroundColor: AppTheme.bg,
        body: Container(
          alignment: Alignment.center,
         // padding: EdgeInsets.only(top: 20),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 10,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  AppTheme.logoname("AA", 120.0),
                  SizedBox(height: 15,),
                  AppTheme.inputfild("UserName", context, AppTheme.keyboardTypetext, AppTheme.Iconname, name,true),

                  SizedBox(height: 15,),
                  AppTheme.inputfild("Password", context, AppTheme.keyboardTypenumber, AppTheme.Iconpass, password,false),
                  SizedBox(height: 15,),
                  AppTheme.inputfild("Email", context, AppTheme.keyboardTypeemail, AppTheme.Iconemail, email,true),
                  SizedBox(height: 15,),
                  AppTheme.inputfild("Phone", context, AppTheme.keyboardTypenumber, AppTheme.Iconphone, phone,true),
                  SizedBox(height: 40,),
                  AppTheme.Button1("UPDATE",context,Home(),true),
                  SizedBox(height: 10,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
