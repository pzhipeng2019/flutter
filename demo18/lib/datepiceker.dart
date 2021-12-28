import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class TimePickerPage extends StatefulWidget {
  TimePickerPage({Key? key}) : super(key: key);

  _TimePickerPageState createState() => _TimePickerPageState();
}

class _TimePickerPageState extends State<TimePickerPage> {
  DateTime _selectedDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    void _showDatePicker() {
      DatePicker.showDatePicker(
        context,
        pickerTheme: DateTimePickerTheme(
          showTitle: true,
          confirm: Text('确认', style: TextStyle(color: Colors.red)),
          cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
        ),
        minDateTime: DateTime.parse("2010-05-12"), //选择器上可选择的最早时间
        maxDateTime: DateTime.parse("2021-11-25"), //选择器上可选择的最晚时间
        // initialDateTime: _selectedDateTime, //选择器的当前选中时间
        dateFormat: "yyyy-MMMM-dd", //时间格式
        locale: DateTimePickerLocale.zh_cn, //国际化配置
        onClose: () => print("----- onClose -----"),
        onCancel: () => print('onCancel'),
        onChange: (dateTime, List<int> index) {
          setState(() {
            // _selectedDateTime = dateTime;
          });
        },
        onConfirm: (dateTime, List<int> index) {
          setState(() {
            _selectedDateTime = dateTime;
          });
        },
      );
    }

    /// Display time picker.
    void _showDateTimePicker() {
      DatePicker.showDatePicker(
        context,
        minDateTime: DateTime.parse("2019-05-15 09:23:10"),
        maxDateTime: DateTime.parse("2020-06-03 21:11:00"),
        initialDateTime: DateTime.parse(formatDate(_selectedDateTime,
            [yyyy, "-", mm, "-", "dd", " ", HH, ":", nn, ":", ss])),
        dateFormat: "yy年M月d日    EEE,H时:m分",
        locale: DateTimePickerLocale.zh_cn,
        pickerTheme: DateTimePickerTheme(
          showTitle: true,
        ),
        pickerMode: DateTimePickerMode.datetime, // show TimePicker
        onCancel: () {
          debugPrint('onCancel');
        },
        onChange: (dateTime, List<int> index) {
          setState(() {
            _selectedDateTime = dateTime;
          });
        },
        onConfirm: (dateTime, List<int> index) {
          setState(() {
            _selectedDateTime = dateTime;
          });
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text("时间选择器演示页面")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  _showDatePicker();
                },
                child: Row(
                  children: <Widget>[
                    Text(formatDate(
                        _selectedDateTime, [yyyy, "-", mm, "-", dd])),
                    // Icon(Icons.arrow_drop_down)
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  _showDateTimePicker();
                },
                child: Row(
                  children: <Widget>[
                    Text(formatDate(_selectedDateTime,
                        [yyyy, "-", mm, "-", dd, " ", HH, ":", nn])),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
