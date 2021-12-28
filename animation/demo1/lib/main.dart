import 'package:demo1/animation.dart';
import 'package:demo1/anmationdemo.dart';
import 'package:demo1/curvedemo.dart';
import 'package:demo1/tweedemo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: AnimationDemo1(),
    );
  }
}
