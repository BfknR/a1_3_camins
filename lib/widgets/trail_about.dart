import 'package:camins/styles/app_styles.dart';
import 'package:camins/widgets/tag_chip.dart';
import 'package:flutter/material.dart';

import '../models/trail.dart';

class TrailAbout extends StatelessWidget {
  const TrailAbout({super.key, required this.trail});

  final Trail trail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Sobre la ruta", style: AppStyles.sectionTitleText),
        AppStyles.mediumSeparator,
        Text(trail.about, style: AppStyles.bodyText),
        AppStyles.mediumSeparator,
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            TagChip(
              icon: Icon(Icons.loop, color: AppStyles.green),
              tag: 'Circular',
            ),
            TagChip(
              icon: Icon(Icons.water, color: AppStyles.green),
              tag: 'Estanys',
            ),
            TagChip(
              icon: Icon(Icons.pets, color: AppStyles.green),
              tag: 'Gossos permesos',
            ),
            TagChip(
              icon: Icon(Icons.water_drop, color: AppStyles.green),
              tag: "Font d'aigua",
            ),
            TagChip(
              icon: Icon(Icons.cabin, color: AppStyles.green),
              tag: 'Refugi',
            ),
          ],
        ),
      ],
    );
  }
}
