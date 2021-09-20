import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class myTextStyle {
  static TextStyle desktopLoginHeader = TextStyle(
      fontWeight: FontWeight.w800, fontSize: 30, fontFamily: 'Helvetica');

  static TextStyle largeDesktopLoginHeader = TextStyle(
      fontWeight: FontWeight.w800, fontSize: 50, fontFamily: 'Helvetica');

  static TextStyle loginBody = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: 'Helvetica',
  );
}
