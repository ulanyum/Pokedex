import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static const String title = 'Pokedex';

  static TextStyle getTitleTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: (48));
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: (24));
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(color: Colors.white, fontSize: _calculateFontSize(20));
  }

  static _calculateFontSize(double size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size;
    } else {
      return (size * 1.5).sp;
    }
  }

static getPokeInfoLabelTextStyle() {
    return TextStyle(fontSize: _calculateFontSize(20), fontWeight: FontWeight.bold, color: Colors.black);
  }
  static getPokeInfoTextStyle() {
    return TextStyle(fontSize: _calculateFontSize(24), color: Colors.black);
  }

  static String pokeballImageUrl = 'images/pokeball.png';
}
