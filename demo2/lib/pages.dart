import 'package:flutter/material.dart';
import 'custome_router.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("FirstPage", style: TextStyle(fontSize: 36.0)),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.of(context).push(CustomRoute(SecondPage()));
          },
          child: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 64.0,
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("SecondPage", style: TextStyle(fontSize: 36.0)),
        backgroundColor: Colors.pink,
        leading: Container(),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
        ),
      ),
    );
  }
}
