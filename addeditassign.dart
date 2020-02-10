import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class EditAddAssign  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text( 'Assignment',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.grey[900],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: (){},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 15,bottom: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.grey[700],
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Computer Vision',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed:(){},
                      icon: Icon(Icons.clear),color: Colors.red,iconSize: 30,
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Assignment  #',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(DateFormat.yMMMd().format(DateTime.now()),
                    style: TextStyle(color: Colors.white)),
                Row(
                  children: <Widget>[
                    Text('Deadline: ',
                        style: TextStyle(color: Colors.white)),

                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Total Mark: ',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15,bottom: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.grey[700],
            ),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Computer Vision',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed:(){},
                      icon: Icon(Icons.clear),color: Colors.red,iconSize: 30,
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Assignment  #',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(DateFormat.yMMMd().format(DateTime.now()),
                    style: TextStyle(color: Colors.white)),
                Row(
                  children: <Widget>[
                    Text('Deadline: ',
                        style: TextStyle(color: Colors.white)),

                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Total Mark: ',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
         backgroundColor: Colors.amber,
    )
    );
  }

}