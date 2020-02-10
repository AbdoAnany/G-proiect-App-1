import 'package:flutter/material.dart';
class AddAssignment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('Add Assignment',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){}),
        ],
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
          Container(
            margin: EdgeInsets.only(top: 15,bottom: 15),
           // color: Colors.grey[700],
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Courses',style: TextStyle(fontSize: 22,color: Colors.white),),
                new DropdownButton<String>(
                  items: <String>['A', 'B', 'C', 'D'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  hint: Text("Choose your Course",style: TextStyle(color: Colors.white),),
                  onChanged: (_) {},
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15,bottom: 15),
            //color: Colors.grey[700],
            width: double.infinity,
            child:Row(
              children: <Widget>[
                Expanded(
                  child:Text('Total Mark',style: TextStyle(fontSize: 22,color: Colors.white),),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Put mark here ',
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                      filled: true,
                      //fillColor: Colors.grey[500],
                     contentPadding:
                     const EdgeInsets.only(left: 16, bottom: 8.0, top: 8.0),
                     focusedBorder: OutlineInputBorder(
                     borderSide: BorderSide(color: Colors.white),
                     borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15,bottom: 15),
            //color: Colors.grey[700],
            width: double.infinity,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child:Text('Data',style: TextStyle(fontSize: 22,color: Colors.white),),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write Data here  ',
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                      filled: true,
                      //fillColor: Colors.grey[500],
                      contentPadding:
                      const EdgeInsets.only(left: 16, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
                color: Colors.grey[700],),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Fill #1 Name',style: TextStyle(fontSize: 16,color: Colors.white),),
                    IconButton(
                      onPressed:(){},
                      icon: Icon(Icons.clear),color: Colors.red,iconSize: 30,
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Fill #1 Name',style: TextStyle(fontSize: 16,color: Colors.white),),
                    IconButton(
                      onPressed:(){},
                      icon: Icon(Icons.clear),color: Colors.red,iconSize: 30,
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                      Text('Fill #1 Name',style: TextStyle(fontSize: 16,color: Colors.white),),
                      IconButton(
                        onPressed:(){},
                        icon: Icon(Icons.clear),color: Colors.red,iconSize: 30,
                      ),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}