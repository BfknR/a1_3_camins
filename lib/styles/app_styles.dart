import 'package:flutter/material.dart';

class AppStyles {
  static final Color green = Color(0xFF2E7D5B);
  static final Color lightGreen = Color(0xFFE3F1EA);
  static final Color orange = Color(0xFFF2994A);
  static final Color darkText = Color(0xFF1F2A2E);
  static final Color greyText = Color(0xFF6B7A80);
  static final Color background = Color(0xFFF6F8F7);

  static final Widget tinySeparator = SizedBox(width: 4, height: 4);
  static final Widget smallSeparator = SizedBox(width: 8, height: 8);
  static final Widget mediumSeparator = SizedBox(width: 16, height: 16);
  static final Widget bigSeparator = SizedBox(width: 24, height: 24);

  static final TextStyle routeTitle = TextStyle(
    color: Colors.white,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle regionText = TextStyle(
    color: Colors.white,
    fontSize: 11,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle ratingText = TextStyle(
    color: Colors.white,
    fontSize: 11,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle reviewsText = TextStyle(color: greyText, fontSize: 11);
  static final TextStyle cardValuesText = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle sectionTitleText = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle labelText = TextStyle(
    color: Colors.grey.shade700,
    fontSize: 15,
  );
  static final TextStyle startingPointText = TextStyle(
    color: Colors.grey.shade700,
    fontSize: 13,
  );
  static final TextStyle bodyText = TextStyle(
    color: greyText,
    fontSize: 15,
    height: 1.5,
  );
  static final TextStyle greenText = TextStyle(
    color: green,
    fontWeight: FontWeight.bold,
    fontSize: 15,
    height: 1.5,
  );

  static final Gradient imageShade = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.transparent, Colors.black54],
  );
  static final SizedBox verticalDivider = SizedBox(
    height: 40,
    child: VerticalDivider(width: 1, thickness: 1, color: Colors.grey.shade300),
  );
}
