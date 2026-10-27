import 'package:camins/styles/app_styles.dart';
import 'package:flutter/material.dart';

class StageTile extends StatelessWidget {
  const StageTile({
    super.key,
    required this.index,
    required this.title,
    required this.distance,
    required this.time,
    required this.isFinal,
  });

  final int index;
  final String title;
  final String distance;
  final String time;
  final bool isFinal;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        if (!isFinal)
          Positioned(
            left: 15,
            top: 32,
            bottom: -18,
            child: Container(width: 2, color: AppStyles.green),
          ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          minTileHeight: 68,
          leading: CircleAvatar(
            radius: 16,
            backgroundColor: isFinal ? AppStyles.green : AppStyles.lightGreen,
            child: Text(
              "${index + 1}",
              style: isFinal
                  ? AppStyles.lastStageNumberText
                  : AppStyles.tagsText,
            ),
          ),
          title: Text(title, style: AppStyles.stageTitleText),
          subtitle: Text(distance, style: AppStyles.stageSubtitleText),
          trailing: Text(time, style: AppStyles.stageTimeText),
        ),
      ],
    );
  }
}
