import 'package:flutter/material.dart';

class AppStyles {
  // Colors
  static final Color green = Color(0xFF2E7D5B);
  static final Color lightGreen = Color(0xFFE3F1EA);
  static final Color orange = Color(0xFFF2994A);
  static final Color darkText = Color(0xFF1F2A2E);
  static final Color greyText = Color(0xFF6B7A80);
  static final Color background = Color(0xFFF6F8F7);
  static final Color photoOverlay = Color(0xB3000000);
  //----

  // Separators
  static final Widget tinySeparator = SizedBox(width: 4, height: 4);
  static final Widget smallSeparator = SizedBox(width: 8, height: 8);
  static final Widget mediumSeparator = SizedBox(width: 16, height: 16);
  static final Widget bigSeparator = SizedBox(width: 24, height: 24);
  //----

  // Text Styles
  // Main
  static final TextStyle sectionTitleText = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle bodyText = TextStyle(
    color: greyText,
    fontSize: 15,
    height: 1.5,
  );
  static final TextStyle smallWhiteText = TextStyle(
    color: Colors.white,
    fontSize: 11,
    fontWeight: FontWeight.bold,
  );

  // Zone 2: Header
  static final TextStyle routeTitle = TextStyle(
    color: Colors.white,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle reviewsText = TextStyle(color: greyText, fontSize: 11);

  // Zone 3: Stats Card
  static final TextStyle cardValuesText = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle labelText = TextStyle(
    color: Colors.grey.shade700,
    fontSize: 15,
  );

  // Zone 4: About
  static final TextStyle tagsText = TextStyle(
    color: green,
    fontWeight: FontWeight.bold,
    fontSize: 15,
    height: 1.5,
  );

  // Zone 5: Photos
  static final TextStyle overlayText = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20,
  );

  // Zone 6: Stages
  static final TextStyle startingPointText = TextStyle(
    color: Colors.grey.shade700,
    fontSize: 13,
  );
  static final TextStyle lastStageNumberText = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
  static final TextStyle stageTitleText = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  static final TextStyle stageSubtitleText = TextStyle(
    color: greyText,
    fontSize: 14,
  );
  static final TextStyle stageTimeText = TextStyle(
    color: AppStyles.greyText,
    fontWeight: .bold,
    fontSize: 15,
  );
  //----

  //Others
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
