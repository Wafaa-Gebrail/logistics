import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/order/logic/order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ErrorView extends StatelessWidget {
  final String error;

  const ErrorView({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red.withOpacity(.08),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.error_outline_rounded,
                color: AppColors.blue2,
                size: 46,
              ),
            ),

            const SizedBox(height: 22),

            const Text(
              'Something went wrong',
              style: TextStyle(
                fontSize: 22,
                color: AppColors.black1,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              error,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.black3, height: 1.6),
            ),

            const SizedBox(height: 28),

            ElevatedButton(
              onPressed: () {
                context.read<OrderCubit>().getOrders();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.blue1,
                foregroundColor: AppColors.white,
                elevation: 0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text(
                'Try Again',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}