import 'package:camins/styles/app_styles.dart';
import 'package:flutter/material.dart';

class StatItem extends StatelessWidget {
  const StatItem({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
  });

  final Icon icon;
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        Text(value, style: AppStyles.cardValuesText),
        Text(label, style: AppStyles.labelText),
      ],
    );
  }
}
