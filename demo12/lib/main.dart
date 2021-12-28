import 'package:flutter/material.dart';
import 'tool_tips_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToolTip控件实例",
      theme: ThemeData.dark(),
      home: TooltipDemo(),
    );
  }
}
