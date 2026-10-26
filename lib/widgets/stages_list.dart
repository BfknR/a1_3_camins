import 'package:camins/models/trail.dart';
import 'package:camins/styles/app_styles.dart';
import 'package:flutter/material.dart';

import 'stage_tile.dart';

class StagesList extends StatelessWidget {
  const StagesList({super.key, required this.stages});

  final List<Stage> stages;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text("Etapes", style: AppStyles.sectionTitleText),
        ListView.builder(
          shrinkWrap: true,
          padding: .zero,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: stages.length,
          itemBuilder: (context, i) {
            return StageTile(
              index: i,
              title: stages[i].title,
              distance: stages[i].distance,
              time: stages[i].time,
              isFinal: i == stages.length - 1,
            );
          },
        ),
      ],
    );
  }
}
