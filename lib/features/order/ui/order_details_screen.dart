import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/order/logic/order_cubit.dart';
import 'package:delivery_platform/features/order/logic/order_state.dart';
import 'package:delivery_platform/features/order/ui/widget/order-details/info_card.dart';
import 'package:delivery_platform/features/order/ui/widget/order-details/status_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetailsScreen extends StatefulWidget {
  final String orderId;

  const OrderDetailsScreen({
    super.key,
    required this.orderId,
  });

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  void initState() {
    super.initState();
    context.read<OrderCubit>().getOrderDetails(widget.orderId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrderCubit, OrderState>(
      listenWhen: (_, curr) => curr.maybeWhen(cancelOrderSuccess: (_) => true, cancelOrderError: (_) => true, orElse: () => false),
      listener: (context, state) {
        state.maybeWhen(
          cancelOrderSuccess: (_) => Navigator.pop(context, true),
          cancelOrderError: (error) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(error)),
          ),
          orElse: () {},
        );
      },
      child: Scaffold(
      backgroundColor: AppColors.blue5,

      appBar: AppBar(
        title: const Text(
          "Order Details",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: BlocBuilder<OrderCubit, OrderState>(
            builder: (context, state) {
              final isLoading = state.maybeWhen(
                cancelOrderLoading: () => true,
                orElse: () => false,
              );

              return Row(
                children: [
                  // 🧭 Tracking Button
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          Routes.trackingScreen,
                          arguments: widget.orderId,
                        );
                      },
                      icon: const Icon(Icons.route),
                      label: const Text("Tracking"),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.blue1,
                        side: const BorderSide(color: AppColors.blue1),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // ❌ Cancel Button
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: isLoading
                          ? null
                          : () {
                        context
                            .read<OrderCubit>()
                            .cancelOrder(widget.orderId);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blue1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      icon: isLoading
                          ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: AppColors.white,
                        ),
                      )
                          : const Icon(Icons.cancel, color: AppColors.white),
                      label: Text(
                        isLoading ? "Cancelling..." : "Cancel",
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),

      body: BlocBuilder<OrderCubit, OrderState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),

            orderDetailsLoading: () =>
            const Center(child: CircularProgressIndicator()),

            orderDetailsError: (error) => Center(
              child: Text(error),
            ),

            orderDetailsSuccess: (response) {
              final o = response.data;

              return SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    StatusCard(status: o.status),

                    const SizedBox(height: 20),

                    InfoCard(
                      title: "Pickup",
                      icon: Icons.my_location,
                      children: [
                        _row("Address", o.pickupAddress),
                        _row("Contact", o.pickupContactName),
                        _row("Phone", o.pickupContactPhone),
                        _row("Instructions", o.pickupInstructions),
                      ],
                    ),

                    const SizedBox(height: 16),

                    InfoCard(
                      title: "Dropoff",
                      icon: Icons.location_on,
                      children: [
                        _row("Address", o.dropoffAddress),
                        _row("Contact", o.dropoffContactName),
                        _row("Phone", o.dropoffContactPhone),
                        _row("Instructions", o.dropoffInstructions),
                      ],
                    ),

                    const SizedBox(height: 16),

                    InfoCard(
                      title: "Payment",
                      icon: Icons.payments,
                      children: [
                        _row("Total", o.totalAmount),
                        _row("Driver", o.driverEarnings),
                        _row("Platform", o.platformFee),
                      ],
                    ),

                    const SizedBox(height: 16),

                    InfoCard(
                      title: "Packages",
                      icon: Icons.inventory_2,
                      children: o.packages.map<Widget>((p) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  p.type,
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(p.description),
                                Text("Weight: ${p.weightKg}"),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              );
            },

            // ignore others
            addOrderLoading: () => const SizedBox(),
            addOrderSuccess: (_) => const SizedBox(),
            addOrderError: (_) => const SizedBox(),
            getOrdersLoading: () => const SizedBox(),
            getOrdersSuccess: (_) => const SizedBox(),
            getOrdersError: (_) => const SizedBox(),
            cancelOrderLoading: () => const SizedBox(),
            cancelOrderSuccess: (_) => const SizedBox(),
            cancelOrderError: (_) => const SizedBox(),
          );
        },
      ),
    ),
    );
  }

  Widget _row(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Text(
            "$title: ",
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}