import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/nearby_orders.dart';
import 'package:delivery_platform/features/nearby-orders/logic/nearby_orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderCard extends StatelessWidget {
  final NearbyOrdersData order;

  const OrderCard({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(24),
      onTap: () async {
        final result = await Navigator.pushNamed(
          context,
          Routes.driverOrderDetailsScreen,
          arguments: order,
        );

        if (result == true) {
          context.read<NearbyOrdersCubit>().getNearbyOrders();
        }
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.04),
              blurRadius: 18,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          children: [

            /// TOP
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.blue5,
                    borderRadius:
                    BorderRadius.circular(16),
                  ),
                  child: const Icon(
                    Icons.local_shipping_rounded,
                    color: AppColors.blue1,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order #${order.id.substring(0, 6)}",
                        style: const TextStyle(
                          fontWeight:
                          FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 4),

                      Text(
                        order.deliveryMode
                            .replaceAll('_', ' '),
                        style: const TextStyle(
                          color:
                          AppColors.black2,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding:
                  const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.blue5,
                    borderRadius:
                    BorderRadius.circular(30),
                  ),
                  child: Text(
                    order.status.toUpperCase(),
                    style: const TextStyle(
                      color: AppColors.blue1,
                      fontWeight:
                      FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            /// PICKUP
            _locationTile(
              icon: Icons.my_location_rounded,
              title: "Pickup",
              address: order.pickupAddress,
            ),

            Padding(
              padding:
              const EdgeInsets.only(left: 11),
              child: Container(
                width: 2,
                height: 24,
                color: AppColors.blue1
                    .withOpacity(.2),
              ),
            ),

            /// DROPOFF
            _locationTile(
              icon:
              Icons.location_on_rounded,
              title: "Dropoff",
              address: order.dropoffAddress,
            ),

            const SizedBox(height: 18),

            /// PACKAGE
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppColors.blue5,
                borderRadius:
                BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.inventory_2_outlined,
                    color: AppColors.blue1,
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Text(
                      order.packages.isNotEmpty
                          ? order.packages.first
                          .description
                          : "No description",
                      maxLines: 1,
                      overflow:
                      TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontWeight:
                        FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            /// PRICE
            Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Earnings",
                      style: TextStyle(
                        color:
                        AppColors.black2,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      "\$${order.driverEarnings}",
                      style: const TextStyle(
                        color: AppColors.blue1,
                        fontSize: 24,
                        fontWeight:
                        FontWeight.w800,
                      ),
                    ),
                  ],
                ),

                ElevatedButton(
                  onPressed: () async {
                    final result = await Navigator.pushNamed(
                      context,
                      Routes.driverOrderDetailsScreen,
                      arguments: order,
                    );

                    if (result == true) {
                      context.read<NearbyOrdersCubit>().getNearbyOrders();
                    }
                  },
                  style:
                  ElevatedButton.styleFrom(
                    backgroundColor:
                    AppColors.blue1,
                    elevation: 0,
                    padding:
                    const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 16,
                    ),
                    shape:
                    RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.circular(
                        18,
                      ),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Text(
                        "View Details",
                        style: TextStyle(
                          color:
                          AppColors.white,
                          fontWeight:
                          FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons
                            .arrow_forward_ios_rounded,
                        size: 16,
                        color:
                        AppColors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _locationTile({
    required IconData icon,
    required String title,
    required String address,
  }) {
    return Row(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        Container(
          margin:
          const EdgeInsets.only(top: 4),
          child: Icon(
            icon,
            size: 22,
            color: AppColors.blue1,
          ),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: AppColors.black2,
                  fontSize: 12,
                ),
              ),

              const SizedBox(height: 4),

              Text(
                address,
                style: const TextStyle(
                  fontWeight:
                  FontWeight.w600,
                  height: 1.4,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}