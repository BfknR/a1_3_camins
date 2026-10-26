import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class TrailBottomBar extends StatelessWidget {
  const TrailBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Punt de sortida", style: AppStyles.startingPointText),
                    Text("Banys de Tredòs", style: AppStyles.cardValuesText),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(48, 48),
                  padding: EdgeInsets.zero,
                  side: BorderSide(color: Colors.black12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Icon(
                  Icons.download,
                  color: AppStyles.darkText,
                  size: 24,
                ),
              ),
              AppStyles.smallSeparator,
              FilledButton.icon(
                icon: Icon(Icons.navigation_rounded),
                style: FilledButton.styleFrom(
                  backgroundColor: AppStyles.green,
                  minimumSize: Size(48, 48),
                ),
                onPressed: () {},
                label: Text("Començar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
