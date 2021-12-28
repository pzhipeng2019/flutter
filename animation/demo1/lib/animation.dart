import 'package:flutter/material.dart';

class AnimationBaseDemo extends StatefulWidget {
  const AnimationBaseDemo({Key? key}) : super(key: key);

  @override
  _AnimationBaseDemoState createState() => _AnimationBaseDemoState();
}

class _AnimationBaseDemoState extends State<AnimationBaseDemo>
    with SingleTickerProviderStateMixin {
  double _size = 100;
  late AnimationController _controller;
  late Animation<Color?> _animation;
  final Color _startColor = Colors.blue;
  final Color _endColor = Colors.red;

  Color _color = Colors.blue;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    )
      ..addStatusListener((AnimationStatus status) {
        // _color = Color.lerp(_startColor, _endColor, _controller.value);
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      })
      ..addListener(() {
        setState(() {
          _size = 100 + 100 * _controller.value;
        });
      });
    _animation =
        ColorTween(begin: Colors.blue, end: Colors.red).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          _controller.forward();
        },
        child: Container(
          height: _size,
          width: _size,
          color: _animation.value,
          alignment: Alignment.center,
          child: Text(
            '点我变大',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
