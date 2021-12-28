import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:core';

class FloorContent extends StatelessWidget {
  final List floorGoodsList;
  FloorContent({Key? key, required this.floorGoodsList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [_firstRow(), _otherGoods()],
      ),
    );
  }

  Widget _firstRow() {
    // print(floorGoodsList);
    return Row(
      children: [
        _goodsItem(floorGoodsList[0]),
        Column(
          children: [
            _goodsItem(floorGoodsList[1]),
            _goodsItem(floorGoodsList[2]),
          ],
        ),
      ],
    );
  }

  Widget _otherGoods() {
    return Row(
      children: [
        _goodsItem(floorGoodsList[3]),
        _goodsItem(floorGoodsList[4]),
      ],
    );
  }

  Widget _goodsItem(Map goods) {
    // print("FloorContent");
    // print(goods['logo']);
    return Container(
      width: ScreenUtil().setWidth(180),
      //height: ScreenUtil().setHeight(60),
      child: InkWell(
        onTap: () {
          print('点击了楼层商品');
        },
        child: Image.network(
          "http://photo.xgsxzx.com${goods['logo']}",
        ),
      ),
    );
  }
}
