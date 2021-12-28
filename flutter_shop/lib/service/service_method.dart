import 'dart:developer';

import 'package:dio/dio.dart';

import 'dart:async';
import 'dart:io';
import '../config/service_url.dart';

Future getHomePageContent() async {
  try {
    print("开始获取首页数据...............");
    Response response;
    Dio dio = new Dio();
    dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencoded").toString();
    var formData = {
      'subjectId': '325',
      'extendType': '8',
      "page.pageSize": "6"
    };

    response = await dio.post(servicePath['homePageContext'].toString(),
        data: formData);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  } catch (e) {
    return print('ERROR:======>$e');
  }
}

Future getFront() async {
  try {
    print("开始获取首页数据Front");
    Response response;
    Dio dio = new Dio();
    dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencoded").toString();
    response = await dio.get(servicePath['front'].toString());
    if (response.statusCode == 200) {
      // debugger();
      return response.data;
    } else {
      throw Exception('后端接口出现异常，请检测代码和服务器情况.........');
    }
  } catch (e) {
    return print('ERROR:======>$e');
  }
}
