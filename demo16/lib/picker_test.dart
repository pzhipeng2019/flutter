/**
 * @Title:
 * @Package
 * @Description: (用一句话描述该文件做什么)
 * @author A18ccms A18ccms_gmail_com
 * @date
 * @version V1.0
 */

import 'package:flutter/material.dart';
import 'package:fluttertestdemo/picker_tool/Picker_Tool.dart';

class PickerPage extends StatefulWidget {
  @override
  PickerPageState createState() => new PickerPageState();
}

class PickerPageState extends State<PickerPage> {
  var gender = ['男', '女', '其他'];
  var bb = [
    ["11", "22"],
    ["33", "44"],
    ["55", "66"]
  ];
  String _gendervalue; //性别
  var _multicolum;
  var _birthdate;
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('多列单列日期选择器'),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: ListView(
            children: <Widget>[
              //单列
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xffe5e5e5)))),
                child: InkWell(
                  onTap: () {
                    JhPickerTool.showStringPicker(context,
                        title: '性别',
                        data: gender, clickCallBack: (int index, var item) {
                      setState(() {
                        this._gendervalue = item;
                      });
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("单列"),
                      Text("${_gendervalue}"),
                    ],
                  ),
                ),
              ),

              //多列
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xffe5e5e5)))),
                child: InkWell(
                  onTap: () {
                    JhPickerTool.showArrayPicker(context, data: bb,
                        clickCallBack: (var index, var strDate) {
                      setState(() {
                        this._multicolum = strDate;
                      });
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("多列"),
                      Text("${_multicolum}"),
                    ],
                  ),
                ),
              ),

              // 日期选择
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1, color: Color(0xffe5e5e5)))),
                child: InkWell(
                  onTap: () {
                    JhPickerTool.showDatePicker(context,
                        clickCallBack: (var str, var time) {
                      setState(() {
                        this._birthdate = str;
                      });
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("日期"),
                      Text("${_birthdate}"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  // @override
  // void didUpdateWidget(PickerPage oldWidget) {
  //   // TODO: implement didUpdateWidget
  //   super.didUpdateWidget(oldWidget);
  // }

  // @override
  // void didChangeDependencies() {
  //   // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  // }
}
