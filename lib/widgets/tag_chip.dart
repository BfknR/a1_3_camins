import 'package:camins/styles/app_styles.dart';
import 'package:flutter/material.dart';

class TagChip extends StatelessWidget {
  const TagChip({super.key, required this.icon, required this.tag});

  final Icon icon;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppStyles.lightGreen,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [icon, AppStyles.tinySeparator, Text(tag)],
      ),
    );
  }
}
