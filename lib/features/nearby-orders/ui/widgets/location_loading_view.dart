import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class LocationLoadingView extends StatelessWidget {
  const LocationLoadingView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          const CircularProgressIndicator(
            color: AppColors.blue1,
          ),

          const SizedBox(height: 24),

          const Text(
            "Updating your location...",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.black1,
            ),
          ),

          const SizedBox(height: 8),

          const Text(
            "Please wait while we fetch nearby orders",
            style: TextStyle(
              color: AppColors.black3,
            ),
          ),
        ],
      ),
    );
  }
}