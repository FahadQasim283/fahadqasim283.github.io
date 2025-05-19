import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/text_styles.dart';
import 'delayed_animated_widget.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Duration animationDelay;

  const SectionHeader({
    super.key,
    required this.title,
    this.subtitle,
    this.animationDelay = const Duration(milliseconds: 100),
  });

  @override
  Widget build(BuildContext context) {
    return DelayedAnimatedWidget(
      delay: animationDelay,
      beginOffset: const Offset(0, 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyles.heading2(context)),
          if (subtitle != null) ...[
            const SizedBox(height: 8),
            Text(subtitle!, style: TextStyles.bodyMedium(context)),
          ],
          const SizedBox(height: 16),
          Container(
            width: 60,
            height: 4,
            decoration: BoxDecoration(
              gradient: AppColors.primaryGradient,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }
}
