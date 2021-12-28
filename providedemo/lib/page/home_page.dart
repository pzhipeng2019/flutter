import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providedemo/model/count_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    CountModel model = Provider.of<CountModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("测试计时器"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            //第一种显示方式
            Text("显示计数${context.watch<CountModel>().count}"),
            //第二种显示方式
            Text("显示计数${Provider.of<CountModel>(context).count}"),
            buildCustum()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //第一种修改数据方式
          //context.read<CountModel>().add();
          model.add();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  buildCustum() {
    return Consumer(
      builder: (BuildContext context, CountModel model, child) {
        return Text("Consumer 显示 ${model.count}");
      },
    );
  }
}
