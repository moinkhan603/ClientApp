import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';

class ClippingClass extends CustomClipper<Path> {
  static double curveHeightClipping = 0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 303;
    final double _yScaling = size.height / 700;
    curveHeightClipping = _yScaling * 812;
    path.lineTo(375 * _xScaling,0 * _yScaling);
    path.cubicTo(375 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,0 * _xScaling,0 * _yScaling,);
    path.cubicTo(0 * _xScaling,0 * _yScaling,0 * _xScaling,91 * _yScaling,0 * _xScaling,91 * _yScaling,);
    path.cubicTo(0 * _xScaling,91 * _yScaling,0 * _xScaling,171 * _yScaling,0 * _xScaling,171 * _yScaling,);
    path.cubicTo(0 * _xScaling,126.817 * _yScaling,35.8172 * _xScaling,91 * _yScaling,80 * _xScaling,91 * _yScaling,);
    path.cubicTo(80 * _xScaling,91 * _yScaling,295 * _xScaling,91 * _yScaling,295 * _xScaling,91 * _yScaling,);
    path.cubicTo(339.183 * _xScaling,91 * _yScaling,375 * _xScaling,55.1828 * _yScaling,375 * _xScaling,11 * _yScaling,);
    path.cubicTo(375 * _xScaling,11 * _yScaling,375 * _xScaling,0 * _yScaling,375 * _xScaling,0 * _yScaling,);
    path.cubicTo(375 * _xScaling,0 * _yScaling,375 * _xScaling,0 * _yScaling,375 * _xScaling,0 * _yScaling,);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}


class SineCurve extends Curve{
  final double count;
  SineCurve({this.count =3});

  @override
  double transformInternal(double t){
    var val = sin(count*2*pi*t)*0.5+0.5;

  }
}