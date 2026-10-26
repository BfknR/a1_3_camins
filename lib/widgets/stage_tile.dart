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
    return ListTile(
      contentPadding: .zero,
      leading: CircleAvatar(
        radius: 16,
        backgroundColor: isFinal ? AppStyles.green : AppStyles.lightGreen,
        child: Text(
          "${index + 1}",
          style: isFinal ? AppStyles.whiteText : AppStyles.greenText,
        ),
      ),
      title: Text(title, style: AppStyles.stageTitleText),
      subtitle: Text(distance, style: AppStyles.stageSubtitleText),
      trailing: Text(time, style: AppStyles.stageTimeText),
    );
  }
}
