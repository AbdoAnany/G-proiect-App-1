import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project2/appTheme.dart';
import 'package:project2/entrypages/signin.dart';

class Signup extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SignupState();
  }
}
class SignupState extends State<Signup> {
  bool flag=true;
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  TextEditingController name = new TextEditingController();
  TextEditingController phone = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(

        backgroundColor: AppTheme.bg,
        body: Container(
          alignment: Alignment.center,
          // padding: EdgeInsets.only(top: 20),
          child: ListView(
            children: <Widget>[
              AppTheme.logo,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  AppTheme.inputfild("Email", context, AppTheme.keyboardTypeemail, AppTheme.Iconemail, email,true),
                  SizedBox(height: 15,),
                  AppTheme.inputfild("Password", context, AppTheme.keyboardTypenumber, AppTheme.Iconpass, password,false),
                  SizedBox(height: 15,),
                  AppTheme.inputfild("UserName", context, AppTheme.keyboardTypetext, AppTheme.Iconname, name,true),
                  SizedBox(height: 15,),
                  AppTheme.inputfild("Phone", context, AppTheme.keyboardTypenumber, AppTheme.Iconphone, phone,true),
                  SizedBox(height: 40,),
                  AppTheme.Button2("REGISTER",context,Signin(),true),
                  SizedBox(height: 70,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppTheme.bgt,
                          borderRadius: BorderRadius.only( topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                        ),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true, readOnly: true,
                          //  controller: pass,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "BACK TO CODE",
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                          autocorrect: true,
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppTheme.bu,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: IconButton(
                          icon: Icon(Icons.fast_rewind,color: Colors.white,),color: AppTheme.bu,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
