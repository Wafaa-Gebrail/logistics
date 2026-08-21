import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

class OrdersLoadingView extends StatelessWidget {
  const OrdersLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: 6,
      separatorBuilder: (_, __) => const SizedBox(height: 18),
      itemBuilder: (context, index) {
        return TweenAnimationBuilder<double>(
          duration: Duration(milliseconds: 400 + (index * 80)),
          tween: Tween(begin: 0, end: 1),
          builder: (context, value, child) {
            return Opacity(opacity: value, child: child);
          },
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(28),
            ),
          ),
        );
      },
    );
  }
}