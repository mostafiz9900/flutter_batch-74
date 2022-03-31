

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class ChaniAnimation extends AnimatedWidget {
  const ChaniAnimation({Key? key,required Animation<double> animation})
      : super(key: key, listenable: animation);
  static final _opacityTween = Tween(begin: 0.0, end: 1.0);
  static final _sizeTween = Tween(begin: 0.4, end: 179.800);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          width: _sizeTween.evaluate(animation),
          height: _sizeTween.evaluate(animation),
          
          child: ElevatedButton(
            onPressed: () {
              
            },
            child: Text('Eleveted Button'),
          ),
        ),
      
      ),
    );
  }
}
