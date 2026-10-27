import 'package:flutter/material.dart';

import '../models/trail.dart';
import '../styles/app_styles.dart';
import '../widgets/photos_grid.dart';
import '../widgets/stages_list.dart';
import '../widgets/trail_about.dart';
import '../widgets/trail_bottom_bar.dart';
import '../widgets/trail_header.dart';
import '../widgets/trail_stats_card.dart';

class TrailDetailScreen extends StatelessWidget {
  const TrailDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.background,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Zone 2: Header
          Stack(
            clipBehavior: Clip.none,
            children: [
              TrailHeader(
                rating: estanysColomers.rating,
                region: estanysColomers.region,
                reviewCount: estanysColomers.reviewCount,
                title: estanysColomers.title,
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: -44,
                child: TrailStatsCard(
                  distance: estanysColomers.distance,
                  difficulty: estanysColomers.difficulty,
                  incline: estanysColomers.incline,
                  time: estanysColomers.time,
                ),
              ),
            ],
          ),
          // Space for the part of the card that hangs below the header
          SizedBox(height: 44),
          AppStyles.bigSeparator,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Zone 4: About
                TrailAbout(about: estanysColomers.about),
                AppStyles.bigSeparator,
                //Zone 5: Photos
                PhotosGrid(photoPaths: estanysColomers.photoPaths),
                AppStyles.bigSeparator,
                //Zone 6: Stages
                StagesList(stages: estanysColomers.stages),
              ],
            ),
          ),
        ],
      ),
      // Zone 7: Barra inferior
      bottomNavigationBar: TrailBottomBar(),
    );
  }
}
