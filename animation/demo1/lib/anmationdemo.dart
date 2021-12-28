import 'package:flutter/material.dart';

class AnimationDemo1 extends StatefulWidget {
  const AnimationDemo1({Key? key}) : super(key: key);

  @override
  _AnimationDemo1State createState() => _AnimationDemo1State();
}

class _AnimationDemo1State extends State<AnimationDemo1>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorAnimation;
  late Animation _sizeAnimation;
  late Animation _animation;
  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 5), vsync: this)
          ..addListener(() {
            setState(() {});
          });

    _colorAnimation = ColorTween(begin: Colors.red, end: Colors.blue).animate(
        CurvedAnimation(
            parent: _animationController, curve: Interval(0.0, 1.0)));
    _sizeAnimation = Tween(begin: 100.0, end: 300.0).animate(CurvedAnimation(
        parent: _animationController, curve: Interval(0.0, 1.0)));

    _animation = TweenSequence([
      TweenSequenceItem(
          tween: Tween(begin: 100, end: 200)
              .chain(CurveTween(curve: Curves.easeIn)),
          weight: 40),
      TweenSequenceItem(tween: ConstantTween<double>(200.0), weight: 20),
      TweenSequenceItem(tween: Tween(begin: 200.0, end: 300.0), weight: 40)
    ]).animate(_animationController);
    //开始动画
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: _sizeAnimation.value,
            width: _sizeAnimation.value,
            color: _colorAnimation.value,
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }
}
