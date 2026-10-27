import 'package:camins/styles/app_styles.dart';
import 'package:flutter/material.dart';

import 'stat_item.dart';

class TrailStatsCard extends StatelessWidget {
  const TrailStatsCard({super.key, required this.distance, required this.incline, required this.time, required this.difficulty});

  final double distance;
  final int incline;
  final String time;
  final String difficulty;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.zero,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: 88,
        child: Row(
          children: [
            Expanded(
              child: StatItem(
                icon: Icon(Icons.route, color: AppStyles.green),
                value: "$distance km",
                label: "Distància",
              ),
            ),
            AppStyles.verticalDivider,
            Expanded(
              child: StatItem(
                icon: Icon(Icons.trending_up, color: AppStyles.green),
                value: "$incline m",
                label: "Desnivell",
              ),
            ),
            AppStyles.verticalDivider,
            Expanded(
              child: StatItem(
                icon: Icon(Icons.schedule, color: AppStyles.green),
                value: time,
                label: "Durada",
              ),
            ),
            AppStyles.verticalDivider,
            Expanded(
              child: StatItem(
                icon: Icon(Icons.terrain, color: AppStyles.orange),
                value: difficulty,
                label: "Dificultat",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
