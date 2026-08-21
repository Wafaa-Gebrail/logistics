import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/nearby-orders/ui/widgets/error_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:delivery_platform/features/driver-orders/logic/driver_orders_cubit.dart';
import 'package:delivery_platform/features/driver-orders/logic/driver_orders_state.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/nearby_orders.dart';

class DriverOrdersScreen extends StatefulWidget {
  const DriverOrdersScreen({super.key});

  @override
  State<DriverOrdersScreen> createState() => _DriverOrdersScreenState();
}

class _DriverOrdersScreenState extends State<DriverOrdersScreen> {
  @override
  void initState() {
    super.initState();
    context.read<DriverOrdersCubit>().getDriverOrders();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Orders"),
      ),
      body: BlocBuilder<DriverOrdersCubit, DriverOrdersState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            error: (message) => ErrorView(
              message: message,
              onRetry: () => context.read<DriverOrdersCubit>().getDriverOrders(),
            ),
            loaded: (NearbyOrders data) {
              final orders = data.data;

              if (orders.isEmpty) {
                return const Center(
                  child: Text("No orders found"),
                );
              }


              return ListView.separated(
                padding: const EdgeInsets.all(12),
                itemCount: orders.length,
                separatorBuilder: (_, __) => const SizedBox(height: 10),
                itemBuilder: (context, index) {
                  final order = orders[index];

                  return OrderCard(
                    order: order,
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        Routes.driverMyOrderDetailsScreen,
                        arguments: order,
                      );
                    },
                  );
                },
              );
            },
            proofLoading: () => const Center(child: CircularProgressIndicator()),
            proofSuccess: (msg) => Center(child: Text(msg)),
            proofError: (err) => Center(
              child: Text(err, style: const TextStyle(color: Colors.red)),
            ),
          );
        },
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final NearbyOrdersData order;
  final VoidCallback onTap;

  const OrderCard({
    super.key,
    required this.order,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.blue4.withOpacity(0.4),
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.black1.withOpacity(0.05),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// TOP
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _StatusChip(status: order.status),
                _PriceBadge(amount: order.totalAmount),
              ],
            ),

            const SizedBox(height: 12),

            /// ROUTE
            _AddressRow(
              icon: Icons.my_location,
              text: order.pickupAddress,
            ),
            const SizedBox(height: 6),
            _AddressRow(
              icon: Icons.flag,
              text: order.dropoffAddress,
            ),

            const SizedBox(height: 12),

            /// FOOTER
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${order.packages.length} packages",
                  style: TextStyle(
                    color: AppColors.black3,
                    fontSize: 12,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: AppColors.black3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}

class _StatusChip extends StatelessWidget {
  final String status;

  const _StatusChip({required this.status});

  @override
  Widget build(BuildContext context) {
    final color = getStatusColor(status);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.15),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        status.toUpperCase(),
        style: TextStyle(
          color: color,
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
  Color getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case "pending":
        return AppColors.blue3;
      case "assigned":
        return AppColors.blue2;
      case "delivered":
        return AppColors.blue4;
      case "cancelled":
        return AppColors.blue5;
      default:
        return AppColors.black3;
    }
  }
}

class _PriceBadge extends StatelessWidget {
  final double amount;

  const _PriceBadge({required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.blue2.withOpacity(0.15),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "$amount €",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.blue1,
        ),
      ),
    );
  }
}

class _AddressRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _AddressRow({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 14, color: AppColors.black3),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              color: AppColors.black2,
            ),
          ),
        ),
      ],
    );
  }
}
