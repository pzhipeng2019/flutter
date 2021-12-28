import 'package:demo17/picker_tool.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_picker/Picker.dart';
// import 'package:flutter_picker/flutter_picker.dart';
// import 'package:date_format/date_format.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({Key? key}) : super(key: key);

  @override
  _PickerPageState createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  var gender = ['男', '女', '其他'];

  late String _gendervalue; //性别
  final double _kPickerHeight = 216.0;
  final double _kItemHeigt = 40.0;
  final Color _kBtnColor = const Color(0xFF323232);
  final Color _kTitleColor = const Color(0xFF787878);
  final double _kTextFontSize = 17.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("日期"),
      ),
      body: //单列
          Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: Color(0xffe5e5e5)))),
        child: InkWell(
          onTap: () {
            JhPickerTool.showStringPicker(context, title: '性别', data: gender,
                clickCallBack: (int index, var item) {
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
    );
  }
}
