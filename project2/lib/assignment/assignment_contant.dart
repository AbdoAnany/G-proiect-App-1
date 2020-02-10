import '../appTheme.dart';
import 'solveassignment.dart';
import 'package:flutter/material.dart';

class ShowAssignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppTheme.bg,
      appBar: AppTheme.Abar("ASSINMENT", context),
      body: ListView(

        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 15,
              bottom: 40,
            ),
            padding: EdgeInsets.all(10),
            color: AppTheme.bgt,

            child: Text(
              'Assignment details This container take her size from text size'
                  ' =Assignment details This \n'
                  'container take her size from text size\n'
                  'Assignment details This container take her size from text size'
                  ' =Assignment details This \n'
                  'container take her size from text size\n'
                  'Assignment details This container take her size from text size'
                  ' =Assignment details This \n'
                  'container take her size from text size\n'
              ,
              style: TextStyle(fontSize: 16,color: AppTheme.white),
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Fill #1 Name',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Fill #1 Name',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Fill #1 Name',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Fill #1 Name',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Fill #1 Name',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.file_download,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 10),
            color: AppTheme.bgt,
            child:  Row(children: <Widget>[
              Expanded(
                child: Container(
                  margin:EdgeInsets.all(10),
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppTheme.bg,
                   shape: BoxShape.rectangle
                      ,boxShadow: [BoxShadow(color: Colors.white70,spreadRadius: .5)]
                  ),
                  child: TextField(
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    keyboardType: TextInputType.datetime,
                    //  controller: pass,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Total Mark",
                        hintStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.white70,
                            fontWeight: FontWeight.w100)),
                    autocorrect: true,
                  ),
                ),
              ),
              Container(

                width: 80,
                height: 40,
                decoration: BoxDecoration(
                  color: AppTheme.bu,shape: BoxShape.rectangle,
                ),
                child: FlatButton(
                  child: Text("SUBMIT",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed('/homwcourses');
                  },
                ),
              )
            ],),
          ),

        ],
      ),
    );
  }
}
