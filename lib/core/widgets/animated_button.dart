import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/text_styles.dart';
import 'delayed_animated_widget.dart';

class AnimatedButton extends StatefulWidget {
  final String label;
  final VoidCallback onTap;
  final Color? color;
  final bool isSecondary;
  final Duration animationDelay;

  const AnimatedButton({
    super.key,
    required this.label,
    required this.onTap,
    this.color,
    this.isSecondary = false,
    this.animationDelay = const Duration(milliseconds: 200),
  });

  @override
  State<AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 200));
    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DelayedAnimatedWidget(
      delay: widget.animationDelay,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => _controller.forward(),
        onExit: (_) => _controller.reverse(),
        child: GestureDetector(
          onTap: widget.onTap,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width < 600 ? 16 : 24,
                vertical: MediaQuery.of(context).size.width < 600 ? 12 : 16,
              ),
              decoration: BoxDecoration(
                color:
                    widget.isSecondary
                        ? AppColors.buttonSecondary
                        : (widget.color ?? AppColors.buttonPrimary),
                borderRadius: BorderRadius.circular(12),
                gradient: widget.isSecondary ? null : AppColors.primaryGradient,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                widget.label,
                style: TextStyles.button(
                  context,
                ).copyWith(color: widget.isSecondary ? AppColors.textWhite : AppColors.textWhite),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
