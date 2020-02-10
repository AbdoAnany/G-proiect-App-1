import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project2/appTheme.dart';
import 'package:project2/coursespage/home.dart';

class Signin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SigninState();
  }
}

class SigninState extends State<Signin> {
  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.bg,
        body: Container(
          alignment: Alignment.center,
          child: ListView(
            children: <Widget>[
              AppTheme.logo,
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text("WELCOME",
                      textAlign: TextAlign.center, style: AppTheme.Question),
                  SizedBox(
                    height: 20,
                  ),
                  AppTheme.inputfild('UeserName', context,
                      AppTheme.keyboardTypetext, AppTheme.Iconname, user, true),
                  SizedBox(
                    height: 10,
                  ),
                  AppTheme.inputfild(
                      'Password',
                      context,
                      AppTheme.keyboardTypetext,
                      AppTheme.Iconpass,
                      user,
                      false),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Text(
                        "Forget Password ?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      AppTheme.Button2("LOGIN", context, Home(), true)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
