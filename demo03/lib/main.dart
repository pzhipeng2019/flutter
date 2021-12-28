import 'package:flutter/material.dart';
import 'frosted_glass_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "毛玻璃效果",
      theme: ThemeData(
        primarySwatch: Colors.blue, //设置主题颜色
      ),
      home: Scaffold(
        body: FrostedGlassDemo(),
      ),
    );
  }
}
