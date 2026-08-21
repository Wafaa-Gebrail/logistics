import 'dart:ui';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class GlassCard extends StatelessWidget {
  final List<Widget> children;

  const GlassCard({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),

      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 15,
          sigmaY: 15,
        ),

        child: Container(
          padding: const EdgeInsets.all(22),

          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.7),
            borderRadius: BorderRadius.circular(30),

            border: Border.all(
              color: AppColors.white.withOpacity(0.4),
            ),

            boxShadow: [
              BoxShadow(
                color: AppColors.blue1.withOpacity(0.08),
                blurRadius: 25,
                offset: const Offset(0, 10),
              ),
            ],
          ),

          child: Column(
            children: children,
          ),
        ),
      ),
    );
  }
}
