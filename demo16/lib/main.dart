// import 'package:flutter/material.dart';
// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
// import 'package:date_format/date_format.dart';

// void main() => runApp(new MyApp());

// class CustomPicker extends CommonPickerModel {
//   String digits(int value, int length) {
//     return '$value'.padLeft(length, "0");
//   }

//   CustomPicker({DateTime? currentTime, LocaleType? locale})
//       : super(locale: locale) {
//     this.currentTime = currentTime ?? DateTime.now();
//     this.setLeftIndex(this.currentTime.hour);
//     this.setMiddleIndex(this.currentTime.minute);
//     this.setRightIndex(this.currentTime.second);
//   }

//   @override
//   String? leftStringAtIndex(int index) {
//     if (index >= 0 && index < 24) {
//       return this.digits(index, 2);
//     } else {
//       return null;
//     }
//   }

//   @override
//   String? middleStringAtIndex(int index) {
//     if (index >= 0 && index < 60) {
//       return this.digits(index, 2);
//     } else {
//       return null;
//     }
//   }

//   @override
//   String? rightStringAtIndex(int index) {
//     if (index >= 0 && index < 60) {
//       return this.digits(index, 2);
//     } else {
//       return null;
//     }
//   }

//   @override
//   String leftDivider() {
//     return "|";
//   }

//   @override
//   String rightDivider() {
//     return "|";
//   }

//   @override
//   List<int> layoutProportions() {
//     return [1, 2, 1];
//   }

//   @override
//   DateTime finalTime() {
//     return currentTime.isUtc
//         ? DateTime.utc(
//             currentTime.year,
//             currentTime.month,
//             currentTime.day,
//             this.currentLeftIndex(),
//             this.currentMiddleIndex(),
//             this.currentRightIndex())
//         : DateTime(
//             currentTime.year,
//             currentTime.month,
//             currentTime.day,
//             this.currentLeftIndex(),
//             this.currentMiddleIndex(),
//             this.currentRightIndex());
//   }
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     print(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd]));
//     print(formatDate(DateTime(1989, 2, 21), [yy, '-', m, '-', dd]));
//     print(formatDate(DateTime(1989, 2, 1), [yy, '-', m, '-', d]));

//     print(formatDate(DateTime(1989, 2, 1), [yy, '-', MM, '-', d]));
//     print(formatDate(DateTime(1989, 2, 21), [yy, '-', M, '-', d]));

//     print(formatDate(DateTime(1989, 2, 1), [yy, '-', M, '-', d]));

//     print(formatDate(DateTime(2018, 1, 14), [yy, '-', M, '-', DD]));
//     print(formatDate(DateTime(2018, 1, 14), [yy, '-', M, '-', D]));

//     print(
//         formatDate(DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss]));

//     print(formatDate(
//         DateTime(1989, 02, 1, 15, 40, 10), [hh, ':', nn, ':', ss, ' ', am]));

//     print(formatDate(
//         DateTime(1989, 02, 1, 15, 40, 10), [hh, ':', nn, ':', ss, ' ', am]));

//     print(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [hh]));
//     print(formatDate(DateTime(1989, 02, 1, 15, 40, 10), [h]));

//     print(formatDate(DateTime(1989, 02, 1, 5), [am]));
//     print(formatDate(DateTime(1989, 02, 1, 15), [am]));

//     print(formatDate(
//         DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss, z]));

//     print(formatDate(
//         DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss, ' ', Z]));

//     print(formatDate(DateTime(1989, 02, 21), [yy, ' ', w]));
//     print(formatDate(DateTime(1989, 02, 21), [yy, ' ', W]));

//     print(formatDate(DateTime(1989, 12, 31), [yy, '-W', W]));
//     print(formatDate(DateTime(1989, 1, 1), [yy, '-', mm, '-w', W]));

//     print(formatDate(
//         DateTime(1989, 02, 1, 15, 40, 10), [HH, ':', nn, ':', ss, ' ', Z]));

//     print(formatDate(DateTime(2020, 04, 18, 21, 14), [H, '\\h', n]));
//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: new HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Datetime Picker'),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             TextButton(
//                 onPressed: () {
//                   DatePicker.showDatePicker(context,
//                       showTitleActions: true,
//                       minTime: DateTime(2018, 3, 5),
//                       maxTime: DateTime(2019, 6, 7),
//                       theme: DatePickerTheme(
//                           headerColor: Colors.orange,
//                           backgroundColor: Colors.blue,
//                           itemStyle: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18),
//                           doneStyle:
//                               TextStyle(color: Colors.white, fontSize: 16)),
//                       onChanged: (date) {
//                     print('change $date in time zone ' +
//                         date.timeZoneOffset.inHours.toString());
//                   }, onConfirm: (date) {
//                     print('confirm $date');
//                   }, currentTime: DateTime.now(), locale: LocaleType.zh);
//                 },
//                 child: Text(
//                   'show date picker(custom theme &date time range)',
//                   style: TextStyle(color: Colors.blue),
//                 )),
//             TextButton(
//                 onPressed: () {
//                   DatePicker.showTimePicker(context, showTitleActions: true,
//                       onChanged: (date) {
//                     print('change $date in time zone ' +
//                         date.timeZoneOffset.inHours.toString());
//                   }, onConfirm: (date) {
//                     print('confirm $date');
//                   }, currentTime: DateTime.now());
//                 },
//                 child: Text(
//                   'show time picker',
//                   style: TextStyle(color: Colors.blue),
//                 )),
//             TextButton(
//                 onPressed: () {
//                   DatePicker.showTime12hPicker(context, showTitleActions: true,
//                       onChanged: (date) {
//                     print('change $date in time zone ' +
//                         date.timeZoneOffset.inHours.toString());
//                   }, onConfirm: (date) {
//                     print('confirm $date');
//                   }, currentTime: DateTime.now());
//                 },
//                 child: Text(
//                   'show 12H time picker with AM/PM',
//                   style: TextStyle(color: Colors.blue),
//                 )),
//             TextButton(
//                 onPressed: () {
//                   DatePicker.showDateTimePicker(context,
//                       showTitleActions: true,
//                       minTime: DateTime(2020, 5, 5, 20, 50),
//                       maxTime: DateTime(2020, 6, 7, 05, 09), onChanged: (date) {
//                     print('change $date in time zone ' +
//                         date.timeZoneOffset.inHours.toString());
//                   }, onConfirm: (date) {
//                     print('confirm $date');
//                   }, locale: LocaleType.zh);
//                 },
//                 child: Text(
//                   'show date time picker (Chinese)',
//                   style: TextStyle(color: Colors.blue),
//                 )),
//             TextButton(
//                 onPressed: () {
//                   DatePicker.showDateTimePicker(context, showTitleActions: true,
//                       onChanged: (date) {
//                     print('change $date in time zone ' +
//                         date.timeZoneOffset.inHours.toString());
//                   }, onConfirm: (date) {
//                     print('confirm $date');
//                   }, currentTime: DateTime(2008, 12, 31, 23, 12, 34));
//                 },
//                 child: Text(
//                   'show date time picker (English-America)',
//                   style: TextStyle(color: Colors.blue),
//                 )),
//             TextButton(
//                 onPressed: () {
//                   DatePicker.showDateTimePicker(context, showTitleActions: true,
//                       onChanged: (date) {
//                     print('change $date in time zone ' +
//                         date.timeZoneOffset.inHours.toString());
//                   }, onConfirm: (date) {
//                     print('confirm $date');
//                   },
//                       currentTime: DateTime(2008, 12, 31, 23, 12, 34),
//                       locale: LocaleType.nl);
//                 },
//                 child: Text(
//                   'show date time picker (Dutch)',
//                   style: TextStyle(color: Colors.blue),
//                 )),
//             TextButton(
//                 onPressed: () {
//                   DatePicker.showDateTimePicker(context, showTitleActions: true,
//                       onChanged: (date) {
//                     print('change $date in time zone ' +
//                         date.timeZoneOffset.inHours.toString());
//                   }, onConfirm: (date) {
//                     print('confirm $date');
//                   },
//                       currentTime: DateTime(2008, 12, 31, 23, 12, 34),
//                       locale: LocaleType.ru);
//                 },
//                 child: Text(
//                   'show date time picker (Russian)',
//                   style: TextStyle(color: Colors.blue),
//                 )),
//             TextButton(
//                 onPressed: () {
//                   DatePicker.showDateTimePicker(context, showTitleActions: true,
//                       onChanged: (date) {
//                     print('change $date in time zone ' +
//                         date.timeZoneOffset.inHours.toString());
//                   }, onConfirm: (date) {
//                     print('confirm $date');
//                   },
//                       currentTime: DateTime.utc(2019, 12, 31, 23, 12, 34),
//                       locale: LocaleType.de);
//                 },
//                 child: Text(
//                   'show date time picker in UTC (German)',
//                   style: TextStyle(color: Colors.blue),
//                 )),
//             TextButton(
//                 onPressed: () {
//                   DatePicker.showPicker(context, showTitleActions: true,
//                       onChanged: (date) {
//                     print('change $date in time zone ' +
//                         date.timeZoneOffset.inHours.toString());
//                   }, onConfirm: (date) {
//                     print('confirm $date');
//                   },
//                       pickerModel: CustomPicker(currentTime: DateTime.now()),
//                       locale: LocaleType.en);
//                 },
//                 child: Text(
//                   'show custom time picker,\nyou can custom picker model like this',
//                   style: TextStyle(color: Colors.blue),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:io';

import 'package:demo16/picker_test.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter_picker/flutter_picker.dart';
// import 'PickerData.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

final String _fontFamily = Platform.isWindows ? "Roboto" : "";

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: _fontFamily,
          primaryTextTheme: TextTheme().apply(fontFamily: _fontFamily),
        ),
        localizationsDelegates: [
          PickerLocalizationsDelegate.delegate, // 如果要使用本地化，请添加此行，则可以显示中文按钮
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('zh', 'CH'),
          const Locale('ko', 'KO'),
          const Locale('it', 'IT'),
          const Locale('ar', 'AR'),
          const Locale('tr', 'TR')
        ],
        home: PickerPage());
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final double listSpec = 4.0;
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//   String stateText = "";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       appBar: AppBar(
//         title: Text('Picker ${stateText.isEmpty ? "" : " - " + stateText}'),
//         automaticallyImplyLeading: false,
//         elevation: 0.0,
//       ),
//       body: Container(
//         padding: EdgeInsets.all(10.0),
//         alignment: Alignment.topCenter,
//         child: ListView(
//           children: <Widget>[
//             ListTile(
//               title: Text('1. Picker Show'),
//               onTap: () {
//                 //showPicker(context);
//               },
//             ),
//             ListTile(
//               title: Text('2. Picker Show Modal'),
//               onTap: () {
//                 showPickerModal(context);
//               },
//             ),
//             ListTile(
//               title: Text('3. Picker Show Icons'),
//               onTap: () {
//                 showPickerIcons(context);
//               },
//             ),
//             ListTile(
//               title: Text('4. Picker Show (Array)'),
//               onTap: () {
//                 showPickerArray(context);
//               },
//             ),
//             ListTile(
//               title: Text('5. Picker Show Number'),
//               onTap: () {
//                 showPickerNumber(context);
//               },
//             ),
//             ListTile(
//               title: Text('6. Picker Show Number FormatValue'),
//               onTap: () {
//                 showPickerNumberFormatValue(context);
//               },
//             ),
//             ListTile(
//               title: Text('7. Picker Show Date'),
//               onTap: () {
//                 showPickerDate(context);
//               },
//             ),
//             ListTile(
//               title: Text('8. Picker Show Datetime'),
//               onTap: () {
//                 showPickerDateTime(context);
//               },
//             ),
//             ListTile(
//               title: Text('9. Picker Show Date (Custom)'),
//               onTap: () {
//                 showPickerDateCustom(context);
//               },
//             ),
//             ListTile(
//               title: Text('10. Picker Show Datetime (24)'),
//               onTap: () {
//                 showPickerDateTime24(context);
//               },
//             ),
//             ListTile(
//               title: Text('11. Picker Show Datetime (Round background)'),
//               onTap: () {
//                 showPickerDateTimeRoundBg(context);
//               },
//             ),
//             ListTile(
//               title: Text('12. Picker Show Date Range'),
//               onTap: () {
//                 showPickerDateRange(context);
//               },
//             ),
//             ListTile(
//               title: Text('13. DurationPicker (time)'),
//               onTap: () {
//                 showPickerDurationSelect(context);
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   showMsg(String msg) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
//   }

//   static void showStringPicker<T>(
//     BuildContext context, {
//     required List<T> data,
//     required String title,
//     required int normalIndex,
//     required PickerDataAdapter adapter,
//     @required _StringClickCallBack clickCallBack,
//   }) {
//     openModalPicker(context,
//         adapter: adapter ?? PickerDataAdapter(pickerdata: data, isArray: false),
//         clickCallBack: (Picker picker, List<int> selecteds) {
//       //          print(picker.adapter.text);
//       clickCallBack(selecteds[0], data[selecteds[0]]);
//     }, selecteds: [normalIndex ?? 0], title: title);
//   }

//   showPickerModal(BuildContext context) async {
//     final result = await Picker(
//         adapter: PickerDataAdapter<String>(
//             pickerdata: JsonDecoder().convert(PickerData)),
//         changeToFirst: true,
//         hideHeader: false,
//         selectedTextStyle: TextStyle(color: Colors.blue),
//         // builderHeader: (context) {
//         //   final picker = PickerWidget.of(context);
//         //   return picker?.data?.title ?? Text("xxx");
//         // },
//         onConfirm: (picker, value) {
//           print(value.toString());
//           print(picker.adapter.text);
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => Scaffold(
//                         appBar: AppBar(title: Text("Hello")),
//                         body: Center(
//                             child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text("You click the Confirm button."),
//                             SizedBox(height: 32),
//                             Text("result: \n ${picker.adapter.text}")
//                           ],
//                         )),
//                       )));
//         }).showModal(this.context); //_sca
//     print("result: $result"); // ffoldKey.currentState);
//   }

//   showPickerIcons(BuildContext context) {
//     Picker(
//       adapter: PickerDataAdapter(data: [
//         PickerItem(text: Icon(Icons.add), value: Icons.add, children: [
//           PickerItem(text: Icon(Icons.more)),
//           PickerItem(text: Icon(Icons.aspect_ratio)),
//           PickerItem(text: Icon(Icons.android)),
//           PickerItem(text: Icon(Icons.menu), children: [
//             // 测试：多加了一维数据
//             PickerItem(text: Icon(Icons.account_box)),
//             PickerItem(text: Icon(Icons.analytics)),
//           ]),
//         ]),
//         PickerItem(text: Icon(Icons.title), value: Icons.title, children: [
//           PickerItem(text: Icon(Icons.more_vert)),
//           PickerItem(text: Icon(Icons.ac_unit)),
//           PickerItem(text: Icon(Icons.access_alarm)),
//           PickerItem(text: Icon(Icons.account_balance)),
//         ]),
//         PickerItem(text: Icon(Icons.face), value: Icons.face, children: [
//           PickerItem(text: Icon(Icons.add_circle_outline)),
//           PickerItem(text: Icon(Icons.add_a_photo)),
//           PickerItem(text: Icon(Icons.access_time)),
//           PickerItem(text: Icon(Icons.adjust)),
//         ]),
//         PickerItem(
//             text: Icon(Icons.linear_scale),
//             value: Icons.linear_scale,
//             children: [
//               PickerItem(text: Icon(Icons.assistant_photo)),
//               PickerItem(text: Icon(Icons.account_balance)),
//               PickerItem(text: Icon(Icons.airline_seat_legroom_extra)),
//               PickerItem(text: Icon(Icons.airport_shuttle)),
//               PickerItem(text: Icon(Icons.settings_bluetooth)),
//             ]),
//         PickerItem(text: Icon(Icons.close), value: Icons.close),
//       ]),
//       title: Text("Select Icon"),
//       selectedTextStyle: TextStyle(color: Colors.blue, fontSize: 12),
//       onConfirm: (Picker picker, List value) {
//         print(value.toString());
//         print(picker.getSelectedValues());
//       },
//     ).show(_scaffoldKey.currentState);
//   }

//   showPickerDialog(BuildContext context) {
//     Picker(
//         adapter: PickerDataAdapter<String>(
//             pickerdata: JsonDecoder().convert(PickerData)),
//         hideHeader: true,
//         title: Text("Select Data"),
//         selectedTextStyle: TextStyle(color: Colors.blue),
//         onConfirm: (Picker picker, List value) {
//           print(value.toString());
//           print(picker.getSelectedValues());
//         }).showDialog(context);
//   }

//   showPickerArray(BuildContext context) {
//     Picker(
//         adapter: PickerDataAdapter<String>(
//           pickerdata: JsonDecoder().convert(PickerData2),
//           isArray: true,
//         ),
//         hideHeader: true,
//         selecteds: [3, 0, 2],
//         title: Text("Please Select"),
//         selectedTextStyle: TextStyle(color: Colors.blue),
//         cancel: TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: Icon(Icons.child_care)),
//         onConfirm: (Picker picker, List value) {
//           print(value.toString());
//           print(picker.getSelectedValues());
//         }).showDialog(context);
//   }

//   showPickerNumber(BuildContext context) {
//     Picker(
//         adapter: NumberPickerAdapter(data: [
//           NumberPickerColumn(
//               begin: 0,
//               end: 999,
//               postfix: Text("\$"),
//               suffix: Icon(Icons.insert_emoticon)),
//           NumberPickerColumn(begin: 200, end: 100, jump: -10),
//         ]),
//         delimiter: [
//           PickerDelimiter(
//               child: Container(
//             width: 30.0,
//             alignment: Alignment.center,
//             child: Icon(Icons.more_vert),
//           ))
//         ],
//         hideHeader: true,
//         title: Text("Please Select"),
//         selectedTextStyle: TextStyle(color: Colors.blue),
//         onConfirm: (Picker picker, List value) {
//           print(value.toString());
//           print(picker.getSelectedValues());
//         }).showDialog(context);
//   }

//   showPickerNumberFormatValue(BuildContext context) {
//     Picker(
//         adapter: NumberPickerAdapter(data: [
//           NumberPickerColumn(
//               begin: 0,
//               end: 999,
//               onFormatValue: (v) {
//                 return v < 10 ? "0$v" : "$v";
//               }),
//           NumberPickerColumn(begin: 100, end: 200),
//         ]),
//         delimiter: [
//           PickerDelimiter(
//               child: Container(
//             width: 30.0,
//             alignment: Alignment.center,
//             child: Icon(Icons.more_vert),
//           ))
//         ],
//         hideHeader: true,
//         title: Text("Please Select"),
//         selectedTextStyle: TextStyle(color: Colors.blue),
//         onConfirm: (Picker picker, List value) {
//           print(value.toString());
//           print(picker.getSelectedValues());
//         }).showDialog(context);
//   }

//   showPickerDate(BuildContext context) {
//     Picker(
//         hideHeader: true,
//         adapter: DateTimePickerAdapter(),
//         title: Text("Select Data"),
//         selectedTextStyle: TextStyle(color: Colors.blue),
//         onConfirm: (Picker picker, List value) {
//           print((picker.adapter as DateTimePickerAdapter).value);
//         }).showDialog(context);
//   }

//   showPickerDateCustom(BuildContext context) {
//     Picker(
//         hideHeader: true,
//         adapter: DateTimePickerAdapter(
//           customColumnType: [2, 1, 0, 3, 4],
//         ),
//         title: Text("Select Data"),
//         selectedTextStyle: TextStyle(color: Colors.blue),
//         onConfirm: (Picker picker, List value) {
//           print((picker.adapter as DateTimePickerAdapter).value);
//         }).showDialog(context);
//   }

//   showPickerDateTime(BuildContext context) {
//     Picker(
//         adapter: DateTimePickerAdapter(
//           type: PickerDateTimeType.kMDYHM_AP,
//           isNumberMonth: true,
//           //strAMPM: const["上午", "下午"],
//           yearSuffix: "年",
//           monthSuffix: "月",
//           daySuffix: "日",
//           hourSuffix: "時",
//           minuteSuffix: "分",
//           secondSuffix: "秒",
//           minValue: DateTime.now(),
//           minuteInterval: 30,
//           //minHour: 1,
//           //maxHour: 23,
//           // twoDigitYear: true,
//         ),
//         title: Text("Select DateTime"),
//         textAlign: TextAlign.right,
//         selectedTextStyle: TextStyle(color: Colors.blue),
//         delimiter: [
//           PickerDelimiter(
//               column: 5,
//               child: Container(
//                 width: 16.0,
//                 alignment: Alignment.center,
//                 child: Text(':', style: TextStyle(fontWeight: FontWeight.bold)),
//                 color: Colors.white,
//               ))
//         ],
//         footer: Container(
//           height: 50.0,
//           alignment: Alignment.center,
//           child: Text('Footer'),
//         ),
//         onConfirm: (Picker picker, List value) {
//           print(picker.adapter.text);
//         },
//         onSelect: (Picker picker, int index, List<int> selected) {
//           setState(() {
//             stateText = picker.adapter.toString();
//           });
//         }).show(_scaffoldKey.currentState);
//   }

//   showPickerDateRange(BuildContext context) {
//     print("canceltext: ${PickerLocalizations.of(context).cancelText}");

//     Picker ps = Picker(
//         hideHeader: true,
//         adapter: DateTimePickerAdapter(
//             type: PickerDateTimeType.kYMD, isNumberMonth: true),
//         onConfirm: (Picker picker, List value) {
//           print((picker.adapter as DateTimePickerAdapter).value);
//         });

//     Picker pe = Picker(
//         hideHeader: true,
//         adapter: DateTimePickerAdapter(type: PickerDateTimeType.kYMD),
//         onConfirm: (Picker picker, List value) {
//           print((picker.adapter as DateTimePickerAdapter).value);
//         });

//     List<Widget> actions = [
//       TextButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text(PickerLocalizations.of(context).cancelText)),
//       TextButton(
//           onPressed: () {
//             Navigator.pop(context);
//             ps.onConfirm(ps, ps.selecteds);
//             pe.onConfirm(pe, pe.selecteds);
//           },
//           child: Text(PickerLocalizations.of(context).confirmText))
//     ];

//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text("Select Date Range"),
//             actions: actions,
//             content: Container(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Text("Begin:"),
//                   ps.makePicker(),
//                   Text("End:"),
//                   pe.makePicker()
//                 ],
//               ),
//             ),
//           );
//         });
//   }

//   showPickerDateTime24(BuildContext context) {
//     Picker(
//         adapter: DateTimePickerAdapter(
//           type: PickerDateTimeType.kMDYHM,
//           isNumberMonth: true,
//           yearSuffix: "年",
//           monthSuffix: "月",
//           daySuffix: "日",
//           hourSuffix: "時",
//           minuteSuffix: "分",
//           secondSuffix: "秒",
//           minHour: 8,
//           maxHour: 19,
//           yearBegin: 1950,
//           yearEnd: 1998,
//         ),
//         title: Text("Select DateTime"),
//         onConfirm: (Picker picker, List value) {
//           print(picker.adapter.text);
//         },
//         onSelect: (Picker picker, int index, List<int> selected) {
//           showMsg(picker.adapter.toString());
//         }).show(_scaffoldKey.currentState);
//   }

//   /// 圆角背景
//   showPickerDateTimeRoundBg(BuildContext context) {
//     var picker = Picker(
//         backgroundColor: Colors.transparent,
//         headerDecoration: BoxDecoration(
//             border:
//                 Border(bottom: BorderSide(color: Colors.black12, width: 0.5))),
//         adapter: DateTimePickerAdapter(
//             type: PickerDateTimeType.kMDYHM,
//             isNumberMonth: true,
//             yearSuffix: "年",
//             monthSuffix: "月",
//             daySuffix: "日"),
//         delimiter: [
//           PickerDelimiter(
//               column: 3,
//               child: Container(
//                 width: 8.0,
//                 alignment: Alignment.center,
//               )),
//           PickerDelimiter(
//               column: 5,
//               child: Container(
//                 width: 12.0,
//                 alignment: Alignment.center,
//                 child: Text(':', style: TextStyle(fontWeight: FontWeight.bold)),
//                 color: Colors.white,
//               )),
//         ],
//         title: Text("Select DateTime"),
//         onConfirm: (Picker picker, List value) {
//           print(picker.adapter.text);
//         },
//         onSelect: (Picker picker, int index, List<int> selected) {
//           showMsg(picker.adapter.toString());
//         });

//     showModalBottomSheet(
//         context: context,
//         backgroundColor: Colors.transparent,
//         builder: (context) {
//           return Material(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(10), topRight: Radius.circular(10)),
//               child: Container(
//                 padding: const EdgeInsets.only(top: 4),
//                 child: picker.makePicker(null, true),
//               ));
//         });
//   }

//   showPickerDurationSelect(BuildContext context) {
//     final range = <DateTime>[
//       DateTime(0, 1, 1, 8, 30),
//       DateTime(0, 1, 1, 14, 30)
//     ];
//     final p1 = Picker(
//         adapter: DateTimePickerAdapter(
//           customColumnType: [6, 7, 4],
//           value: range[0],
//         ),
//         delimiter: [
//           PickerDelimiter(
//               column: 0,
//               child: Container(
//                 alignment: Alignment.center,
//                 width: 100,
//                 padding: EdgeInsets.fromLTRB(12, 0, 8, 0),
//                 child: Text('Start',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.red,
//                         fontSize: 14)),
//                 color: Colors.white,
//               )),
//         ],
//         onSelect: (Picker picker, int index, List<int> selected) {
//           range[0] = (picker.adapter as DateTimePickerAdapter).value;
//         },
//         onConfirmBefore: (picker, selected) async {
//           if (range[0] == null) {
//             showMsg("Please select the start time.");
//             return false;
//           }
//           if (range[1] == null) {
//             showMsg("Please select the end time.");
//             return false;
//           }
//           return true;
//         },
//         onConfirm: (picker, selected) {
//           showMsg(
//               "Start: ${range[0].toString()}, End: ${range[1].toString()}, ${picker.adapter}");
//         });
//     final p2 = Picker(
//         adapter: DateTimePickerAdapter(
//           customColumnType: [6, 7, 4],
//           value: range[1],
//         ),
//         hideHeader: true,
//         delimiter: [
//           PickerDelimiter(
//               column: 0,
//               child: Container(
//                 alignment: Alignment.center,
//                 padding: EdgeInsets.fromLTRB(12, 0, 8, 0),
//                 width: 100,
//                 child: Text('End',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.red,
//                         fontSize: 14)),
//                 color: Colors.white,
//               )),
//         ],
//         onSelect: (Picker picker, int index, List<int> selected) {
//           range[1] = (picker.adapter as DateTimePickerAdapter).value;
//         });
//     _scaffoldKey.currentState.showBottomSheet((BuildContext context) {
//       return Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [p1.makePicker(), p2.makePicker()],
//       );
//     });
//   }
// }

// class _StringClickCallBack {}
