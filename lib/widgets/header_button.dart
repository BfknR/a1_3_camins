import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class HeaderButton extends StatelessWidget {
  const HeaderButton({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon, color: AppStyles.darkText, size: 20),
      ),
    );
  }
}
