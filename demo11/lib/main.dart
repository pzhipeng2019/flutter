import 'package:flutter/material.dart';
import 'right_back_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "右滑返回上一页的操作",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: RightBackDemo(),
    );
  }
}
