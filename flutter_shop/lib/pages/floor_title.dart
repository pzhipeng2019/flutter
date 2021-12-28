import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloorTitle extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String picture_address; //图片地址
  // ignore: non_constant_identifier_names
  FloorTitle({Key? key, required this.picture_address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(picture_address);
    return Container(
      height: ScreenUtil().setHeight(60),
      padding: EdgeInsets.all(8.0),
      child: Image.network(picture_address),
    );
  }
}
