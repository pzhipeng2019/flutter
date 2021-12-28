import 'package:flutter/material.dart';
import 'expansion_panel_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "展开闭合的列表功能",
      theme: ThemeData.dark(),
      home: ExpansionPanelListDemo(),
    );
  }
}
