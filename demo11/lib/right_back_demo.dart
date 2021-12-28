import 'package:flutter/cupertino.dart';

class RightBackDemo extends StatefulWidget {
  const RightBackDemo({Key? key}) : super(key: key);

  @override
  _RightBackDemoState createState() => _RightBackDemoState();
}

class _RightBackDemoState extends State<RightBackDemo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Container(
          height: 100.0,
          width: 100.0,
          color: CupertinoColors.activeBlue,
          child: CupertinoButton(
            child: Icon(CupertinoIcons.add),
            onPressed: () {
              Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (BuildContext context) {
                return RightBackDemo();
              }));
            },
          ),
        ),
      ),
    );
  }
}
