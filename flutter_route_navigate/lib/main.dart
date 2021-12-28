import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "页面跳转返回数据",
    home: FisrsPage(),
  ));
}

class FisrsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("小姐姐电话"),
        ),
        body: Center(
          child: RouteButton(),
        ));
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        _navigateToXiaoJieJie(context);
      },
      child: Text("赵小姐姐"),
    );
  }

  _navigateToXiaoJieJie(BuildContext context) async {
    final result = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => XiaoJieJie()));
    Scaffold.of(context).showSnackBar(SnackBar(content: Text("$result")));
  }
}

class XiaoJieJie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是小姐姐"),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pop(context, '大长腿：1521452321');
              },
              child: Text("大长腿姐姐"),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context, '小蛮腰：1521452321');
              },
              child: Text("小蛮腰姐姐"),
            )
          ],
        ),
      ),
    );
  }
}
