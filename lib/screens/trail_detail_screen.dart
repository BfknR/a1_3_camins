import 'package:camins/models/trail.dart';
import 'package:camins/widgets/trail_stats_card.dart';
import 'package:camins/widgets/trail_header.dart';
import 'package:flutter/material.dart';

import '../styles/app_styles.dart';
import '../widgets/trail_about.dart';

class TrailDetailScreen extends StatelessWidget {
  const TrailDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.background,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Here will go the zones, top to bottom
          TrailHeader(trail: estanysColomers),
          AppStyles.bigSeparator,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TrailStatsCard(trail: estanysColomers),
                AppStyles.bigSeparator,
                TrailAbout(trail: estanysColomers),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar
    );
  }
}
