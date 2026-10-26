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
          TrailHeader(trail: estanysColomers),
          AppStyles.bigSeparator,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Zone 3: Fitxa
                TrailStatsCard(trail: estanysColomers),
                AppStyles.bigSeparator,
                //Zone 4: About
                TrailAbout(trail: estanysColomers),
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
