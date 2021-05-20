import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.black;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Animated"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 1000),
          curve: Curves.decelerate,
          width: _width,
          height: _height,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () => changeAnimate(),
      ),
    ));
  }

  void changeAnimate() {
    var _rnd = new Random();
    setState(() {
      _width = _rnd.nextInt(300).toDouble();
      _height = _rnd.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          _rnd.nextInt(255), _rnd.nextInt(255), _rnd.nextInt(255), 1);

      _borderRadius = BorderRadius.circular(_rnd.nextInt(100).toDouble());
    });
  }
}
