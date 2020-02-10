import 'solveassignment.dart';
import 'package:flutter/material.dart';

class ShowAssignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(

        backgroundColor: Colors.grey[900],
        title: new Text(
          'Assignment',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        actions: <Widget>[
          // IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){}),
          FlatButton(
            color: Colors.amber,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SolveAssignment()),);
              },
              child: Text(
                'Solve',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 16),
              ))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 40,),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
              color: Colors.grey[700],
            ),
            child: Text('Assignment details This container take her size from text size =Assignment details This container take her size from text size',style: TextStyle(fontSize:16 ),),
          ),
          Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Fill #1 Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                  IconButton( icon:Icon(Icons.file_download,color: Colors.white,),onPressed:(){} ,)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
