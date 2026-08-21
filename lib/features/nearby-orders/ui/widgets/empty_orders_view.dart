import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class EmptyOrdersView extends StatelessWidget {
  const EmptyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 15,
                  )
                ],
              ),
              child: const Icon(
                Icons.delivery_dining,
                size: 60,
                color: AppColors.blue1,
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              "No Nearby Orders",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.black1,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "We're looking for delivery requests near your location.\nPlease wait a moment.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: AppColors.black3,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}