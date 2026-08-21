import 'package:delivery_platform/features/nearby-orders/logic/nearby_orders_cubit.dart';
import 'package:delivery_platform/features/nearby-orders/logic/nearby_orders_state.dart';
import 'package:delivery_platform/features/nearby-orders/ui/widgets/empty_orders_view.dart';
import 'package:delivery_platform/features/nearby-orders/ui/widgets/error_view.dart';
import 'package:delivery_platform/features/nearby-orders/ui/widgets/location_loading_view.dart';
import 'package:delivery_platform/features/nearby-orders/ui/widgets/order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';

class NearbyOrdersScreen extends StatefulWidget {
  const NearbyOrdersScreen({super.key});

  @override
  State<NearbyOrdersScreen> createState() => _NearbyOrdersScreenState();
}

class _NearbyOrdersScreenState extends State<NearbyOrdersScreen> {
  @override
  void initState() {
    super.initState();

    final cubit = context.read<NearbyOrdersCubit>();

    cubit.startTracking();
  }

  @override
  void dispose() {
    context.read<NearbyOrdersCubit>().stopTracking();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue5,

      appBar: AppBar(
        title: const Text("Nearby Orders"),
        backgroundColor: AppColors.blue1,
        foregroundColor: AppColors.white,
        elevation: 0,
      ),

      body: BlocBuilder<NearbyOrdersCubit, NearbyOrdersState>(
        builder: (context, state) {
          return state.when(
            initial: () => const LocationLoadingView(),

            loading: () => const Center(
              child: CircularProgressIndicator(
                color: AppColors.blue1,
              ),
            ),

            error: (msg) => ErrorView(
              message: msg,
              onRetry: () => context.read<NearbyOrdersCubit>().startTracking(),
            ),

            loaded: (response) {
              final orders = response.data;

              if (orders.isEmpty) {
                return const EmptyOrdersView();
              }

              return RefreshIndicator(
                color: AppColors.blue1,
                onRefresh: () async {
                  context.read<NearbyOrdersCubit>().getNearbyOrders();
                },
                child: ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: orders.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final order = orders[index];
                    return OrderCard(order: order);
                  },
                ),
              );
            },

            driverLocationLoading: () => const LocationLoadingView(),

            driverLocationLoaded: (_) => const LocationLoadingView(),

            driverLocationError: (error) => ErrorView(
              message: error,
              onRetry: () => context.read<NearbyOrdersCubit>().startTracking(),
            ),
            acceptOrderLoading: () => const Center(
              child: CircularProgressIndicator(color: AppColors.blue1),
            ),
            acceptOrderSuccess: () => const LocationLoadingView(),
            acceptOrderError: (error) => ErrorView(
              message: error,
              onRetry: () => context.read<NearbyOrdersCubit>().getNearbyOrders(),
            ),

          );
        },
      ),
    );
  }
}
