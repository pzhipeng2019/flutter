import 'package:flutter/material.dart';
import 'warp_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData.dark(),
      home: WarpDemo(),
    );
  }
}
