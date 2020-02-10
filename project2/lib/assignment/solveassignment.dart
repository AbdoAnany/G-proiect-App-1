import 'package:flutter/material.dart';
class SolveAssignment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Solve Assignment',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:15,bottom: 40),
            padding: EdgeInsets.all(5),
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[700],
            ),
            child: TextField(
             // textInputAction: TextInputAction.newline
              keyboardType: TextInputType.multiline,
              maxLines: 1000,
              decoration: InputDecoration(
                hintText: 'Whats in your mind... ',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Fill #1 Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                  IconButton( icon:Icon(Icons.clear,color: Colors.white,),onPressed:(){} ,)
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Fill #1 Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                  IconButton( icon:Icon(Icons.clear,color: Colors.white,),onPressed:(){} ,)
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Fill #1 Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                  IconButton( icon:Icon(Icons.clear,color: Colors.white,),onPressed:(){} ,)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

}