import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  // Color Styles//
  static const Color primaryColor = Color(0xff100b20);
  static const Color textColor = Color(0xff707070);

  // Text Styles //
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const textStyle20 = TextStyle(
    fontSize: 20,
  );

  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontFamily: Assets.assetsFontsGTSectraFineRegular,
  );
}
