import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Recommend extends StatelessWidget {
  final List recommendList;
  const Recommend({Key? key, required this.recommendList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(200),
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [_titleWidget(), _recommendList()],
      ),
    );
  }

  //推荐商品标题
  Widget _titleWidget() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.fromLTRB(10.0, 2.0, 0, 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black12),
        ),
      ),
      child: Text(
        '商品推荐',
        style: TextStyle(color: Colors.pink),
      ),
    );
  }

  Widget _recommendList() {
    //print(recommendList);
    return Container(
      height: ScreenUtil().setHeight(130),
      margin: EdgeInsets.all(10.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: _item(index),
            padding: EdgeInsets.all(5.0),
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: recommendList.length,
      ),
    );
  }

  Widget _item(index) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Image.network(
            "http://photo.xgsxzx.com${recommendList[index]['logo']}",
            height: ScreenUtil().setHeight(80),
          ),
          Text(
            '${recommendList[index]['currentPrice']}',
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
