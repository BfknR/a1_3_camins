import 'package:camins/styles/app_styles.dart';
import 'package:flutter/material.dart';

class PhotosGrid extends StatelessWidget {
  const PhotosGrid({super.key, required this.photoPaths});

  final List<String> photoPaths;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Fotos", style: AppStyles.sectionTitleText),
            Text("Veure-les totes", style: AppStyles.greenText),
          ],
        ),
        GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsetsDirectional.only(top: 16),
          itemCount: photoPaths.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                "assets/images/${photoPaths[index]}",
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ],
    );
  }
}
