import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class EmptyOrdersView extends StatelessWidget {
  const EmptyOrdersView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 900),
        tween: Tween(begin: 0, end: 1),
        curve: Curves.easeOutBack,
        builder: (context, value, child) {
          return Transform.scale(
            scale: value,
            child: Opacity(opacity: value.clamp(0.0, 1.0), child: child),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.blue1.withOpacity(.08),
                      AppColors.blue2.withOpacity(.04),
                    ],
                  ),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 64,
                  color: AppColors.blue2,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                'No Orders Yet',
                style: TextStyle(
                  fontSize: 28,
                  color: AppColors.black1,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -.5,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                'Create your first order to start\ntracking deliveries in real time.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.black3,
                  height: 1.7,
                  fontSize: 15,
                ),
              ),

              const SizedBox(height: 28),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 26,
                  vertical: 16,
                ),
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
                child: const Text(
                  'Create New Order',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}