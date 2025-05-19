import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/text_styles.dart';
import 'delayed_animated_widget.dart';

class SkillProgress extends StatelessWidget {
  final String skillName;
  final double progress; // Value between 0.0 and 1.0
  final Duration animationDelay;

  const SkillProgress({
    super.key,
    required this.skillName,
    required this.progress,
    this.animationDelay = const Duration(milliseconds: 300),
  });

  @override
  Widget build(BuildContext context) {
    return DelayedAnimatedWidget(
      delay: animationDelay,
      beginOffset: const Offset(0.2, 0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(skillName, style: TextStyles.bodyLarge(context)),
                Text(
                  '${(progress * 100).toInt()}%',
                  style: TextStyles.bodyMedium(context).copyWith(color: AppColors.textAccent),
                ),
              ],
            ),
            const SizedBox(height: 8),
            LayoutBuilder(
              builder: (context, constraints) {
                return Stack(
                  children: [
                    Container(
                      height: 8,
                      width: constraints.maxWidth,
                      decoration: BoxDecoration(
                        color: AppColors.socialButtonBg,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeOut,
                      height: 8,
                      width: constraints.maxWidth * progress,
                      decoration: BoxDecoration(
                        gradient: AppColors.primaryGradient,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
