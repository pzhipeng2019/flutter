import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "ListVide widget", home: CardView());
  }
}

class RowView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("水平方向布局"),
      ),
      body: new Row(
        children: <Widget>[
          Expanded(
            child: new RaisedButton(
              onPressed: () {},
              color: Colors.redAccent,
              child: Text("红色按钮"),
            ),
          ),
          Expanded(
            child: new RaisedButton(
              onPressed: () {},
              color: Colors.orangeAccent,
              child: Text("黄色按钮"),
            ),
          ),
          Expanded(
            child: new RaisedButton(
              onPressed: () {},
              color: Colors.pinkAccent,
              child: Text("粉色按钮"),
            ),
          )
        ],
      ),
    );
  }
}

class ColumnView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("垂直方向布局"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text("I am JSPeng"),
          ),
          Expanded(
              child: Center(
            child: Text("my website is jspeng.com"),
          )),
          Center(
            child: Text("I love coding"),
          ),
        ],
      ),
    );
  }
}

class CircleAvatarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: NetworkImage(
            "https://blogimages.jspang.com/WechatIMG12.jpeg",
          ),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5.0),
          child: new Text('JSPang 技术胖'),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("垂直方向布局"),
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}

class PositionedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      children: [
        new CircleAvatar(
          backgroundImage: new NetworkImage(
            "https://blogimages.jspang.com/WechatIMG12.jpeg",
          ),
          radius: 100.0,
        ),
        new Positioned(
          child: new Text("JSPeng.com"),
          top: 10.0,
          left: 10.0,
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("positionedView"),
      ),
      body: Center(
        child: stack,
      ),
    );
  }
}

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: [
          ListTile(
            title: new Text(
              "吉林省吉林市昌邑区",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text("技术胖：13560212351"),
            leading: new Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          new Divider(),
          ListTile(
            title: new Text(
              "吉林省吉林市昌邑区",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text("技术胖：13560212351"),
            leading: new Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
          new Divider(),
          ListTile(
            title: new Text(
              "吉林省吉林市昌邑区",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text("技术胖：13560212351"),
            leading: new Icon(
              Icons.account_box,
              color: Colors.lightBlue,
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("CardView"),
      ),
      body: Center(
        child: card,
      ),
    );
  }
}
