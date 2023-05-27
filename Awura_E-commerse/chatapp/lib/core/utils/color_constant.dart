import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#79747e');

  static Color gray700 = fromHex('#6f6464');

  static Color gray5001 = fromHex('#fef7ff');

  static Color blueGray400 = fromHex('#888888');

  static Color orange4003d = fromHex('#3dff921e');

  static Color gray800 = fromHex('#3d3a3a');

  static Color orange900 = fromHex('#ef4800');

  static Color gray900 = fromHex('#1d1b20');

  static Color gray80001 = fromHex('#49454f');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#f7f7ff');

  static Color gray100 = fromHex('#f7f2fa');

  static Color deepPurple50 = fromHex('#eaddff');

  static Color black900 = fromHex('#000000');

  static Color gray10001 = fromHex('#f1f1ff');

  static Color yellow900 = fromHex('#ff7621');

  static Color deepOrange300 = fromHex('#ff7261');

  static Color deepOrange500 = fromHex('#ff621e');

  static Color indigo900 = fromHex('#21005d');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrangeA400 = fromHex('#ff2118');

  static Color gray70001 = fromHex('#66635e');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
