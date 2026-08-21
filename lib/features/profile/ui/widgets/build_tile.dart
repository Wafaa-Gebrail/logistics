import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class BuildTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const BuildTile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Container(
          padding: const EdgeInsets.all(12),

          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                AppColors.blue1,
                AppColors.blue2,
              ],
            ),

            borderRadius: BorderRadius.circular(16),
          ),

          child: Icon(
            icon,
            color: AppColors.white,
          ),
        ),

        const SizedBox(width: 16),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                title,
                style: const TextStyle(
                  color: AppColors.black3,
                  fontSize: 13,
                ),
              ),

              const SizedBox(height: 4),

              Text(
                value,
                style: const TextStyle(
                  color: AppColors.black1,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
