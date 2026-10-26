import 'package:camins/styles/app_styles.dart';
import 'package:camins/widgets/header_button.dart';
import 'package:flutter/material.dart';

import '../models/trail.dart';

class TrailHeader extends StatelessWidget {
  const TrailHeader({super.key, required this.trail});

  final Trail trail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/header.jpg", height: 320, fit: BoxFit.cover),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(gradient: AppStyles.imageShade),
          ),
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppStyles.orange,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  trail.region.toUpperCase(), // We make sure this text will always be UpperCase.
                  style: AppStyles.regionText,
                ),
              ),
              Text(trail.title, style: AppStyles.routeTitle),
              Row(
                spacing: 2,
                children: [
                  Icon(Icons.star, color: AppStyles.orange, size: 16),
                  Text(trail.rating.toString(), style: AppStyles.ratingText),
                  Text(
                    "(${trail.reviewCount} opinions)",
                    style: AppStyles.reviewsText,
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeaderButton(icon: Icons.arrow_back),
                  Row(
                    spacing: 8,
                    children: [
                      HeaderButton(icon: Icons.ios_share),
                      HeaderButton(icon: Icons.favorite_border),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
