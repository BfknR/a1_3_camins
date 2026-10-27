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
            TagChip(icon: Icons.loop, tag: 'Circular'),
            TagChip(icon: Icons.water, tag: 'Estanys'),
            TagChip(icon: Icons.pets, tag: 'Gossos permesos'),
            TagChip(icon: Icons.water_drop, tag: "Font d'aigua"),
            TagChip(icon: Icons.cabin, tag: 'Refugi'),
          ],
        ),
      ],
    );
  }
}
