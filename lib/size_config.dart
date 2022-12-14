import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = MediaQueryData();
  static double screenWidth = 10.0;
  static double screenHeight = 10.0;
  static double defaultSize = 10.0;
  static Orientation orientation = Orientation.portrait;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 300.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 150.0) * screenWidth;
}
