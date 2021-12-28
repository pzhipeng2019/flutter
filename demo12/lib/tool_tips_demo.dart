import 'package:flutter/material.dart';

class TooltipDemo extends StatelessWidget {
  const TooltipDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToolTip控件实例"),
      ),
      body: Center(
        child: Tooltip(
          message: "我是美女",
          child: Image.network(
              "https://img2.baidu.com/it/u=2927149362,2176169298&fm=26&fmt=auto&gp=0.jpg"),
        ),
      ),
    );
  }
}
