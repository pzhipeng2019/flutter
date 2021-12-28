import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassDemo extends StatelessWidget {
  const FrostedGlassDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      //重叠的Stack Widget 实现重贴
      children: <Widget>[
        ConstrainedBox(
          //约束盒子组件，添加额外的限制条件到child 上
          constraints: const BoxConstraints.expand(), //限制条件，可扩展
          child: Image.network("https://newimg.jspang.com/kaikeba20201120.png"),
        ),
        Center(
          child: ClipRect(
            child: BackdropFilter(
              //背景过滤器
              filter: ImageFilter.blur(
                  sigmaX: 5.0, sigmaY: 5.0), //图片模糊过滤，横向竖向都设置5.0
              child: Opacity(
                opacity: 0.5,
                child: Container(
                  // 容器组件
                  width: 500.0,
                  height: 700.0,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200), //盒子装饰器，进行装饰，设置颜色为灰色
                  child: Center(
                    child: Text(
                      'JSPENG',
                      style: Theme.of(context).textTheme.headline4, //设置比较酷炫的字体
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
