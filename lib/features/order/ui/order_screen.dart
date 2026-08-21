import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/order/logic/order_cubit.dart';
import 'package:delivery_platform/features/order/logic/order_state.dart';
import 'package:delivery_platform/features/order/ui/widget/order/empty_orders_view.dart';
import 'package:delivery_platform/features/order/ui/widget/order/error_view.dart';
import 'package:delivery_platform/features/order/ui/widget/order/modern_header.dart';
import 'package:delivery_platform/features/order/ui/widget/order/order_card.dart';
import 'package:delivery_platform/features/order/ui/widget/order/orders_loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _headerAnimationController;
  late final Animation<double> _fadeAnimation;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    context.read<OrderCubit>().getOrders();

    _headerAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _headerAnimationController,
      curve: Curves.easeOut,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, -.1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _headerAnimationController,
        curve: Curves.easeOutCubic,
      ),
    );

    _headerAnimationController.forward();
  }

  @override
  void dispose() {
    _headerAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue5,

      floatingActionButton: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 700),
        tween: Tween(begin: 0, end: 1),
        curve: Curves.easeOutBack,
        builder: (context, value, child) {
          return Transform.scale(scale: value, child: child);
        },
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [AppColors.blue1, AppColors.blue2],
            ),
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: AppColors.blue1.withOpacity(.35),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, Routes.createOrderScreen).then((created) {
                if (created == true) {
                  context.read<OrderCubit>().getOrders();
                }
              });
            },
            elevation: 0,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            icon: const Icon(Icons.add_rounded, color: AppColors.white),
            label: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                'Create Order',
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ),

      body: SafeArea(
        child: Column(
            children: [
              FadeTransition(
                opacity: _fadeAnimation,
                child: SlideTransition(
                  position: _slideAnimation,
                  child: const ModernHeader(),
                ),
              ),

              Expanded(
                child: BlocBuilder<OrderCubit, OrderState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox.shrink(),

                      addOrderLoading: () => const SizedBox.shrink(),
                      addOrderSuccess: (_) => const SizedBox.shrink(),
                      addOrderError: (_) => const SizedBox.shrink(),

                      getOrdersLoading: () => const OrdersLoadingView(),

                      getOrdersSuccess: (ordersResponse) {
                        final orders = ordersResponse.data ?? [];

                        if (orders.isEmpty) {
                          return const EmptyOrdersView();
                        }

                        return RefreshIndicator(
                          color: AppColors.blue1,
                          onRefresh: () async {
                            context.read<OrderCubit>().getOrders();
                          },
                          child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.fromLTRB(20, 8, 20, 120),
                            itemCount: orders.length,
                            separatorBuilder: (_, __) =>
                            const SizedBox(height: 18),
                            itemBuilder: (context, index) {
                              final order = orders[index];

                              return TweenAnimationBuilder<double>(
                                duration: Duration(
                                  milliseconds: 400 + (index * 120),
                                ),
                                tween: Tween(begin: 0, end: 1),
                                curve: Curves.easeOutCubic,
                                builder: (context, value, child) {
                                  return Opacity(
                                    opacity: value.clamp(0.0, 1.0),
                                    child: Transform.translate(
                                      offset: Offset(0, 30 * (1 - value)),
                                      child: child,
                                    ),
                                  );
                                },
                                child: OrderCard(order: order),
                              );
                            },
                          ),
                        );
                      },

                      getOrdersError: (error) =>
                          ErrorView(error: error),

                      orderDetailsLoading: () =>
                      const Center(child: CircularProgressIndicator()),

                      orderDetailsSuccess: (_) => const SizedBox.shrink(),

                      orderDetailsError: (error) =>
                          ErrorView(error: error),

                      cancelOrderLoading: () => const SizedBox.shrink(),
                      cancelOrderSuccess: (_) => const SizedBox.shrink(),
                      cancelOrderError: (_) => const SizedBox.shrink(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
  }
}