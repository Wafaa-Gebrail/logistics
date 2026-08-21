import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.blue1,
            AppColors.blue2,
          ],
        ),
        borderRadius:
        BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color:
            AppColors.blue1.withOpacity(.25),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: const Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  'Fast Delivery',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight:
                    FontWeight.w800,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  'Create and manage your delivery orders professionally.',
                  style: TextStyle(
                    color: AppColors.white,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(width: 20),

          Icon(
            Icons.local_shipping_rounded,
            color: AppColors.white,
            size: 56,
          ),
        ],
      ),
    );
  }
}