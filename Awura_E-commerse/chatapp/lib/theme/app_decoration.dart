import 'package:flutter/material.dart';
import 'package:chatapp/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtFillGray600 => BoxDecoration(
        color: ColorConstant.gray600,
      );
  static BoxDecoration get fillOrange4003d => BoxDecoration(
        color: ColorConstant.orange4003d,
      );
  static BoxDecoration get txtFillGray800 => BoxDecoration(
        color: ColorConstant.gray800,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: ColorConstant.gray10001,
      );
  static BoxDecoration get txtFillDeeppurple50 => BoxDecoration(
        color: ColorConstant.deepPurple50,
      );
  static BoxDecoration get txtFillDeeporangeA400 => BoxDecoration(
        color: ColorConstant.deepOrangeA400,
      );
  static BoxDecoration get txtFillGray5001 => BoxDecoration(
        color: ColorConstant.gray5001,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineYellow900 => BoxDecoration(
        color: ColorConstant.gray5001,
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.yellow900,
            width: getHorizontalSize(
              1,
            ),
          ),
        ),
      );
  static BoxDecoration get txtFillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get txtFillDeeporange300 => BoxDecoration(
        color: ColorConstant.deepOrange300,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f1 => BoxDecoration();
  static BoxDecoration get txtFillDeeporange500 => BoxDecoration(
        color: ColorConstant.deepOrange500,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius roundedBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius txtCircleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
