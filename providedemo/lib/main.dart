import 'package:flutter/material.dart';
import 'package:providedemo/model/count_model.dart';
import 'package:provider/provider.dart';

import 'page/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) {
          return CountModel();
        }),
      ],
      child: MaterialApp(
        title: "provideDemo",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
