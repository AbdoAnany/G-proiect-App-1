import 'package:darkui/addassignment.dart';
import 'package:flutter/material.dart';
import 'assignment1.dart';
import 'editDRassignment.dart';
import 'reciveassiggggn.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to Flutter',

        home:EditDRAssignment(),

    );
  }
}