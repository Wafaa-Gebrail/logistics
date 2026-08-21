import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class ModernHeader extends StatelessWidget {
  const ModernHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppColors.blue1, AppColors.blue2],
                  ),
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.blue1.withOpacity(.25),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  color: AppColors.white,
                  size: 28,
                ),
              ),

              const Spacer(),

              Container(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: AppColors.blue4.withOpacity(.25)),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.blue1.withOpacity(.06),
                      blurRadius: 16,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none_rounded,
                    color: AppColors.blue1,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 28),

          const Text(
            'Orders',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w800,
              letterSpacing: -.8,
              color: AppColors.black1,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'Track and manage your deliveries easily.',
            style: TextStyle(
              color: AppColors.black3,
              fontSize: 15,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}