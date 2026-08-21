import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  final String status;

  const StatusCard({super.key, required this.status});

  Color getColor() {
    switch (status) {
      case "pending":
        return AppColors.blue1;
      case "delivered":
        return AppColors.blue2;
      case "cancelled":
        return AppColors.blue3;
      default:
        return AppColors.blue1;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = getColor();

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: AppColors.black2,
          )
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.local_shipping, color: color),
          const SizedBox(width: 10),
          Text(
            status.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}