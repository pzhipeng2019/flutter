import 'package:flutter/material.dart';
import 'expansion_tile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter demo",
      theme: ThemeData.dark(),
      home: ExpansionTileDemo(),
    );
  }
}
