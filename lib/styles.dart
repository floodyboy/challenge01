import 'package:flutter/material.dart';

class Styles {

  static final Color baseColour = _hexToColor('53DAB7');
  static final Color cardInfoColour = _hexToColor('BBBBBB');
  static final double sportInfoHeight = 16.0;
  static final String _fontNameDefault = 'Hussar';

  static final navBarTitle = TextStyle(
    fontFamily: _fontNameDefault,
  );

  static final sportTitle = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: 18.0,
    color: baseColour,
  );

  static final sportInfo = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: sportInfoHeight,
    color: cardInfoColour,
  );

  static final header = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: sportInfoHeight,
    color: cardInfoColour,
    letterSpacing: 2.0,
    wordSpacing: 2.0,
  );

  static final bookSeats = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: sportInfoHeight,
    color: Colors.white,
  );

  static final eventListingTitle = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: 16.0,
    color: baseColour,
  );

  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }

}
