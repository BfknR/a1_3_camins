import 'package:camins/styles/app_styles.dart';
import 'package:camins/widgets/header_button.dart';
import 'package:flutter/material.dart';

class TrailHeader extends StatelessWidget {
  const TrailHeader({
    super.key,
    required this.rating,
    required this.region,
    required this.title,
    required this.reviewCount,
  });

  final double rating;
  final String region;
  final String title;
  final int reviewCount;

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
          bottom: 60,
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
                  region.toUpperCase(), // We make sure this text will always be UpperCase.
                  style: AppStyles.smallWhiteText,
                ),
              ),
              Text(title, style: AppStyles.routeTitle),
              Row(
                spacing: 2,
                children: [
                  Icon(Icons.star, color: AppStyles.orange, size: 16),
                  Text(rating.toString(), style: AppStyles.smallWhiteText),
                  Text("($reviewCount opinions)", style: AppStyles.reviewsText),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 44,
          left: 16,
          right: 16,
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
      ],
    );
  }
}
