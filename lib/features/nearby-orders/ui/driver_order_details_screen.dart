import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/accept_order.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/nearby_orders.dart';
import 'package:delivery_platform/features/nearby-orders/logic/nearby_orders_cubit.dart';
import 'package:delivery_platform/features/nearby-orders/logic/nearby_orders_state.dart';
import 'package:delivery_platform/features/nearby-orders/ui/widgets/order-details/section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverOrderDetailsScreen extends StatelessWidget {
  final NearbyOrdersData order;

  const DriverOrderDetailsScreen({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    final package = order.packages.first;

    return BlocConsumer<NearbyOrdersCubit, NearbyOrdersState>(
      listener: (context, state) {
        state.whenOrNull(
          acceptOrderLoading: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) {
                return const Center(
                  child:
                  CircularProgressIndicator(),
                );
              },
            );
          },
          acceptOrderSuccess: () {
            Navigator.pop(context);
            ScaffoldMessenger.of(context)
                .showSnackBar(
              const SnackBar(
                content: Text(
                  "Order Accepted Successfully",
                ),
              ),
            );

            Navigator.pop(context);
          },

          acceptOrderError: (error) {
            Navigator.pop(context);
            Navigator.pop(context, true);
            ScaffoldMessenger.of(context)
                .showSnackBar(
              SnackBar(
                content: Text(error),
              ),
            );
          },
        );
      },

      builder: (context, state) {

        return Scaffold(
          backgroundColor: AppColors.blue5,

          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            foregroundColor: AppColors.black1,
            title: Text(
              "Order #${order.id.substring(0, 6)}",
            ),
          ),

          body: ListView(
            padding: const EdgeInsets.all(20),
            children: [

              // HEADER CARD
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      AppColors.blue1,
                      AppColors.blue2,
                    ],
                  ),
                  borderRadius:
                  BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color:
                      AppColors.blue5,
                      blurRadius: 24,
                      offset: const Offset(0, 12),
                    ),
                  ],
                ),
                child: Column(
                  children: [

                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color:
                        AppColors.white.withOpacity(.15),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.local_shipping_rounded,
                        color: AppColors.white,
                        size: 34,
                      ),
                    ),
                    const SizedBox(height: 18),

                    Text(
                      "\$${order.driverEarnings}",
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 8),

                    const Text(
                      "Driver Earnings",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 18),

                    Container(
                      padding:
                      const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color:
                        Colors.white.withOpacity(.15),
                        borderRadius:
                        BorderRadius.circular(30),
                      ),
                      child: Text(
                        order.status.toUpperCase(),
                        style: const TextStyle(
                          color: AppColors.white,
                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // PICKUP
              Section(
                title: "Pickup Information",
                icon: Icons.my_location_rounded,
                child: Column(
                  children: [
                    _row(
                      "Address",
                      order.pickupAddress,
                    ),
                    _row(
                      "Contact",
                      order.pickupContactName,
                    ),
                    _row(
                      "Phone",
                      order.pickupContactPhone,
                    ),
                    _row(
                      "Instructions",
                      order.pickupInstructions,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // DROPOFF
              Section(
                title: "Dropoff Information",
                icon:
                Icons.location_on_rounded,
                child: Column(
                  children: [

                    _row(
                      "Address",
                      order.dropoffAddress,
                    ),

                    _row(
                      "Contact",
                      order.dropoffContactName,
                    ),

                    _row(
                      "Phone",
                      order.dropoffContactPhone,
                    ),

                    _row(
                      "Instructions",
                      order.dropoffInstructions,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // PACKAGE
              Section(
                title: "Package Details",
                icon:
                Icons.inventory_2_outlined,
                child: Column(
                  children: [

                    _row(
                      "Type",
                      package.type,
                    ),

                    _row(
                      "Weight",
                      "${package.weightKg} KG",
                    ),

                    _row(
                      "Fragile",
                      package.isFragile
                          ? "Yes"
                          : "No",
                    ),

                    _row(
                      "Description",
                      package.description,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // PAYMENT
              Section(
                title: "Payment Summary",
                icon:
                Icons.account_balance_wallet,
                child: Column(
                  children: [

                    _moneyRow(
                      "Total Amount",
                      order.totalAmount,
                    ),

                    _moneyRow(
                      "Driver Earnings",
                      order.driverEarnings,
                    ),

                    _moneyRow(
                      "Platform Fee",
                      order.platformFee,
                    ),

                    _row(
                      "Delivery Mode",
                      order.deliveryMode
                          .replaceAll("_", " "),
                    ),

                    _row(
                      "Time Preference",
                      order.timeWindowPreference,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // BUTTON
              SizedBox(
                height: 60,
                child: ElevatedButton(
                  onPressed: () {

                    context
                        .read<NearbyOrdersCubit>()
                        .acceptOrder(

                      AcceptOrder(
                        orderId: order.id,
                      ),
                    );
                  },

                  style:
                  ElevatedButton.styleFrom(
                    backgroundColor:
                    AppColors.blue1,
                    elevation: 0,
                    shape:
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(
                        22,
                      ),
                    ),
                  ),

                  child: const Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [

                      Icon(
                        Icons.check_circle,
                        color: AppColors.white,
                      ),

                      SizedBox(width: 10),

                      Text(
                        "Accept Order",
                        style: TextStyle(
                          color: AppColors.white,
                          fontWeight:
                          FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        );
      },
    );
  }

  Widget _row(
      String title,
      String value,
      ) {
    return Padding(
      padding:
      const EdgeInsets.only(bottom: 18),
      child: Row(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [

          Expanded(
            flex: 2,
            child: Text(
              title,
              style: const TextStyle(
                color: AppColors.black2,
                fontWeight:
                FontWeight.w500,
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: const TextStyle(
                fontWeight:
                FontWeight.w700,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _moneyRow(
      String title,
      double amount,
      ) {
    return Padding(
      padding:
      const EdgeInsets.only(bottom: 18),
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [

          Text(
            title,
            style: const TextStyle(
              color: AppColors.black2,
            ),
          ),

          Text(
            "\$${amount.toStringAsFixed(2)}",
            style: const TextStyle(
              fontWeight:
              FontWeight.w800,
              color: AppColors.blue1,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}