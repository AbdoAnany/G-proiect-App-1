import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppTheme {
  AppTheme._();
  AppTheme();

  static const Color bg = Color(0xff343b45);

  static const Color bgt = Color(0xff3e4851);
  static const Color bu = Color(0xfffcbb3b);

  static String timenow = DateFormat.yMMMd().format(DateTime.now());

  static final logo = new Image.asset(
    'assets/group12.png',
    width: 150.0,
    height: 150.0,
  );

  static const Color transparent = Colors.transparent;
  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFEFEFE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);
  static const String fontName = 'WorkSans';

  // This Style for Lables in Entry Pages
  static const TextStyle Question = TextStyle(
    color: AppTheme.white, //
    fontWeight: FontWeight.w400,
    fontSize: 40,
    fontFamily: "Roboto",
  );

  static const TextStyle inputStyle =
      TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);
  static const TextStyle hintStyle =
      TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w100);
  static const TextStyle TextBuStyle = TextStyle(
    fontSize: 15,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle TitleStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);

  static const keyboardTypenumber = TextInputType.number;
  static const keyboardTypetext = TextInputType.text;
  static const keyboardTypeemail = TextInputType.emailAddress;
  static const keyboardTypedate = TextInputType.datetime;
  static const keyboardTypepass = TextInputType.visiblePassword;

  static const IconId = Icon(
    Icons.confirmation_number,
    size: 25,
    color: Colors.white,
  );
  static const Iconpass = Icon(
    Icons.lock,
    size: 25,
    color: Colors.white,
  );
  static const Iconname = Icon(
    Icons.person,
    size: 25,
    color: Colors.white,
  );
  static const Iconemail = Icon(
    Icons.email,
    size: 25,
    color: Colors.white,
  );
  static const Iconphone = Icon(
    Icons.phone,
    size: 30,
    color: Colors.white,
  );
  static const Iconback = Icon(
    Icons.fast_rewind,
    size: 30,
    color: Colors.white,
  );

  static Widget inputfild(
      String hint, BuildContext context, keyboardType, Icons, contr, visable) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      width: MediaQuery.of(context).size.width / 1.5,
      height: 50,
      decoration: BoxDecoration(
        color: AppTheme.bgt,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: TextField(
        style: TextStyle(
          fontSize: 10,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        keyboardType: keyboardType,
        obscureText: !visable,
        controller: contr,
        decoration: InputDecoration(
            icon: Icons,
            border: InputBorder.none,
            hintText: hint,
            hintStyle: hintStyle),
        autocorrect: true,
      ),
    );
  }

  static Widget logoname(String text, h) {
    return Container(
      alignment: Alignment.center,
      height: h,
      width: h,
      decoration: BoxDecoration(
        color: AppTheme.bu,
        borderRadius: BorderRadius.all(Radius.circular(100)),
        boxShadow: <BoxShadow>[
          BoxShadow(
//                        color: AppTheme.grey.withOpacity(0.6),
//                       offset: Offset(20.0, 4.0),spreadRadius: 10,
              blurRadius: 2),
        ],
        border: Border.all(width: h / 12, color: Colors.white),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: h / 3,
        ),
      ),
    );
    ;
  }

  static Widget Abar(String text, BuildContext context) {
    return AppBar(
      title: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 25,
        ),
      ),
      centerTitle: true,
      leading: Container(

        child: IconButton(
          icon: Icon(
            Icons.fast_rewind,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        color: bu,
      ),
      backgroundColor: AppTheme.bg,
      elevation: 0,
    );
  }

  static Widget Button1(String text, BuildContext context, page, check) {
    void showalert() {
      //  setState(() {
      if (check) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      } else {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 45,
                decoration: BoxDecoration(color: bu
                    //   borderRadius: BorderRadius.only( topRight: Radius.circular(50),topLeft: Radius.circular(50))
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Your Input is Wrong',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            });
      }
      //  });
    }

    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
          color: AppTheme.bu,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [BoxShadow(color: Colors.white, blurRadius: 1)]),
      child: FlatButton(
        child: Text(text, style: TextBuStyle),
        onPressed: () {
          showalert();
        },
      ),
    );
  }

  static Widget Button2(String text, BuildContext context, page, check) {
    void showalert() {
      //  setState(() {
      if (check) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      } else {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 45,
                decoration: BoxDecoration(color: bu
                    //   borderRadius: BorderRadius.only( topRight: Radius.circular(50),topLeft: Radius.circular(50))
                    ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Your Input is Wrong',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            });
      }
      //  });
    }

    return Container(
      width: 120,
      height: 50,
      decoration: BoxDecoration(
          color: AppTheme.bu,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [BoxShadow(color: Colors.white, blurRadius: 1)]),
      child: FlatButton(
        child: Text(text, style: TextBuStyle),
        onPressed: () {
          showalert();
        },
      ),
    );
  }

  static const TextStyle homeLable = TextStyle(
    color: AppTheme.white, //
    fontWeight: FontWeight.w400,
    fontSize: 25,
  );
  static const TextStyle infoLabletitle = TextStyle(
    // Caption -> caption
    fontFamily: "Roboto",
    fontWeight: FontWeight.normal,
    fontSize: 25,
    letterSpacing: 0.2,
    color: AppTheme.white, // was lightText
  );
  static const TextStyle infoLable = TextStyle(
    // Caption -> caption
    fontFamily: fontName,
    fontWeight: FontWeight.normal,
    fontSize: 15,
    letterSpacing: 0.2,
    color: AppTheme.white, // // was lightText
  );

  //________________________________________________________________________________

}

Future<void> alert() async {
  return showDialog<void>(
    // context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Rewind and remember'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('You will never be satisfied.'),
              Text('You\’re like me. I’m never satisfied.'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Regret'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void showalert() {
  setState(() {
    if (true) {
      // Navigator.of(context).pushNamed('/Home');
    } else {
      showModalBottomSheet(
          //   context: context,
          builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 45,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.pink, Colors.black]),
            //   borderRadius: BorderRadius.only( topRight: Radius.circular(50),topLeft: Radius.circular(50))
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Email or Password is Wrong',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              )
            ],
          ),
        );
      });
    }
  });
}

void setState(Null Function() param0) {}

final background = Container(
  decoration: BoxDecoration(
    color: Color(0xff343b45),
//        image: DecorationImage(
//            image: AssetImage('assets/Background.png'), fit: BoxFit.cover)
  ),
);
