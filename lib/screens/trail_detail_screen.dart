import 'package:camins/models/trail.dart';
import 'package:camins/widgets/trail_stats_card.dart';
import 'package:camins/widgets/trail_header.dart';
import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

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
          AppStyles.mediumSeparator,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TrailStatsCard(trail: estanysColomers),
          ),
        ],
      ),
      // bottomNavigationBar
    );
  }
}
