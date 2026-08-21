import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/order/logic/order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCard extends StatefulWidget {
  final dynamic order;

  const OrderCard({super.key, required this.order});

  @override
  State<OrderCard> createState() => OrderCardState();
}

class OrderCardState extends State<OrderCard> {
  bool _isHovered = false;

  Color _statusColor(String? status) {
    switch (status?.toLowerCase()) {
      case 'pending':
        return  AppColors.blue2;

      case 'delivered':
        return AppColors.blue3;

      case 'cancelled':
        return AppColors.blue4;

      default:
        return AppColors.black3;
    }
  }

  IconData _statusIcon(String? status) {
    switch (status?.toLowerCase()) {
      case 'pending':
        return Icons.access_time_rounded;

      case 'delivered':
        return Icons.check_circle_rounded;

      case 'cancelled':
        return Icons.cancel_rounded;

      default:
        return Icons.info_outline_rounded;
    }
  }

  @override
  Widget build(BuildContext context) {
    final order = widget.order;

    final statusColor = _statusColor(order.status);

    return AnimatedScale(
      duration: const Duration(milliseconds: 180),
      scale: _isHovered ? .98 : 1,
      child: GestureDetector(
        onTapDown: (_) {
          setState(() => _isHovered = true);
        },
        onTapUp: (_) {
          setState(() => _isHovered = false);
        },
        onTapCancel: () {
          setState(() => _isHovered = false);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.white, AppColors.blue5],
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 30,
                spreadRadius: -8,
                color: AppColors.blue1.withOpacity(.08),
                offset: const Offset(0, 18),
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.orderDetailsScreen,
                  arguments: order.id,
                ).then((cancelled) {
                  if (cancelled == true && context.mounted) {
                    context.read<OrderCubit>().getOrders();
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(22),
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
                          ),
                          child: const Icon(
                            Icons.local_shipping_outlined,
                            color: AppColors.white,
                            size: 28,
                          ),
                        ),

                        const SizedBox(width: 14),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${order.pickupContactName} → ${order.dropoffContactName}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.black1,
                                ),
                              ),

                              const SizedBox(height: 4),

                              const Text(
                                'Delivery Order',
                                style: TextStyle(
                                  color: AppColors.black3,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: statusColor.withOpacity(.12),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                _statusIcon(order.status),
                                size: 14,
                                color: statusColor,
                              ),

                              const SizedBox(width: 6),

                              Text(
                                order.status ?? 'Unknown',
                                style: TextStyle(
                                  color: statusColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    Container(
                      padding: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: AppColors.blue5,
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.location_on_outlined,
                                  size: 18,
                                  color: AppColors.blue1,
                                ),
                              ),

                              const SizedBox(width: 12),

                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Delivery Address',
                                      style: TextStyle(
                                        color: AppColors.black4,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                    const SizedBox(height: 4),

                                    Text(
                                      order.dropoffAddress  ?? 'No Address',
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: AppColors.black2,
                                        fontWeight: FontWeight.w600,
                                        height: 1.5,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 16),

                          Divider(color: AppColors.blue4.withOpacity(.25)),

                          const SizedBox(height: 16),

                          Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Icon(
                                  Icons.payments_outlined,
                                  size: 18,
                                  color: AppColors.blue1,
                                ),
                              ),

                              const SizedBox(width: 12),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Total Price',
                                    style: TextStyle(
                                      color: AppColors.black4,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),

                                  const SizedBox(height: 4),

                                  Text(
                                    'SP${order.totalAmount ?? 0}',
                                    style: const TextStyle(
                                      fontSize: 24,
                                      color: AppColors.black1,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),

                              const Spacer(),

                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [AppColors.blue1, AppColors.blue2],
                                  ),
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.blue1.withOpacity(.25),
                                      blurRadius: 18,
                                      offset: const Offset(0, 8),
                                    ),
                                  ],
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_rounded,
                                  color: AppColors.white,
                                  size: 22,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}