import 'package:flutter/material.dart';

class CounterAnimation extends StatefulWidget {
  const CounterAnimation({Key? key}) : super(key: key);

  @override
  _CounterAnimationState createState() => _CounterAnimationState();
}

class _CounterAnimationState extends State<CounterAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = Tween(begin: 0.0, end: 80.0).animate(_controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse(from: 0.5);
        } else if (status == AnimationStatus.dismissed) {
          print('animation dismiss');
          _controller.forward();
        }
      });
    // ..addListener(() {
    //   setState(() {});
    // });
    // animation =
    //     CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
    // _controller.addListener(() {
    //   setState(() {
    //     _counter++;
    //   });
    // });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward(from: 0.0);
      },
      child: Text(
        _controller.isAnimating ? (_counter).toStringAsFixed(3) : 'Lets begin',
        style: TextStyle(fontSize: 30.0 * animation.value + 15.0),
      ),
    );
  }
}
