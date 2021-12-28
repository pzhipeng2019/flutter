import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';

import '../service/service_method.dart';
import 'ad_banner.dart';
import 'floor_content.dart';
import 'floor_title.dart';
import 'leader_phone.dart';
import 're_commend.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  final List navigatorList = [
    {
      "image": "https://csdnimg.cn/medal/github@240.png",
      "mallCategoryName": "778889"
    },
    {
      "image": "https://csdnimg.cn/medal/qiandao1@240.png",
      "mallCategoryName": "11111111"
    },
  ];
  final String leaderImage = "https://csdnimg.cn/medal/zhuanlandaren@240.png";
  final String leaderPhone = "1008611";
  final String floor1Title = "https://csdnimg.cn/medal/qiandao1@240.png";
  final String floor2Title = "https://csdnimg.cn/medal/qiandao1@240.png";
  final String floor3Title = "https://csdnimg.cn/medal/qiandao1@240.png";
  @override
  // void initState() {
  //   getFront().then((value) {
  //     return print(value);
  //   });
  //   super.initState();
  //   //  print('111111111111111111111111111');
  // }

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('百姓生活+'),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder<dynamic>(
          future: getHomePageContent(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // List<Map> swiperDataList =
              //     (snapshot.data['data']['courseList'] as List)
              //         .cast(); // 顶部轮播组件数
              List swiperDataList = snapshot.data['data']['courseList'];
              List floor2 = snapshot.data['data']['courseList']; //楼层1商品和图片
              //print("floor2");
              // print(floor2);

              return SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SwiperDiy(swiperDataList: swiperDataList), //页面顶部轮播组件
                    TopNavigator(navigatorList: navigatorList),
                    AdBanner(
                        advertesPicture:
                            "http://photo.xgsxzx.com/images/upload/course/20200729/1596013212184.png"),
                    LeaderPhone(
                        leaderImage: leaderImage, leaderPhone: leaderPhone),
                    Recommend(recommendList: swiperDataList),
                    FloorTitle(picture_address: floor1Title),
                    FloorContent(floorGoodsList: floor2),
                  ],
                ),
              );
            } else {
              return Center(
                child: Text('加载中'),
              );
            }
          },
        ),
      ),
    );
  }
}

// 首页轮播组件编写
class SwiperDiy extends StatelessWidget {
  final List swiperDataList;
  SwiperDiy({Key? key, required this.swiperDataList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(360, 690),
        orientation: Orientation.portrait);
    return Container(
      height: ScreenUtil().setHeight(160.h),
      width: ScreenUtil().setWidth(750.w),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
              "http://photo.xgsxzx.com${swiperDataList[index]['logo']}",
              fit: BoxFit.fill);
        },
        itemCount: swiperDataList.length,
        pagination: new SwiperPagination(),
        autoplay: true,
      ),
    );
  }
}

/*导航 */
class TopNavigator extends StatelessWidget {
  final List navigatorList;
  const TopNavigator({Key? key, required this.navigatorList}) : super(key: key);

  Widget _gridViewItemUI(BuildContext context, item) {
    return InkWell(
      onTap: () {
        print("点击了导航");
      },
      child: Column(
        children: [
          Image.network(
            item['image'],
            width: ScreenUtil().setWidth(95),
          ),
          Text(item['mallCategoryName'])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(80),
      padding: EdgeInsets.all(3.0),
      child: GridView.count(
        crossAxisCount: 5,
        padding: EdgeInsets.all(4.0),
        children: navigatorList.map((item) {
          return _gridViewItemUI(context, item);
        }).toList(),
      ),
    );
  }
}
