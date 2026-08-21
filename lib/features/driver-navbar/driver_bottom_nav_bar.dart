import 'dart:ui';
import 'package:delivery_platform/core/di/dependency_injection.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:delivery_platform/features/driver-orders/logic/driver_orders_cubit.dart';
import 'package:delivery_platform/features/driver-orders/ui/driver_orders_screen.dart';
import 'package:delivery_platform/features/driver/logic/driver_cubit.dart';
import 'package:delivery_platform/features/driver/ui/driver_profile_screen.dart';
import 'package:delivery_platform/features/nearby-orders/logic/nearby_orders_cubit.dart';
import 'package:delivery_platform/features/nearby-orders/ui/nearby_orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverBottomNavBar extends StatefulWidget {
  const DriverBottomNavBar({super.key});

  @override
  State<DriverBottomNavBar> createState() => _DriverBottomNavBarState();
}

class _DriverBottomNavBarState extends State<DriverBottomNavBar> {
  int selectedIndex = 0;

  final List<IconData> icons = [
    Icons.home_rounded,
    Icons.inventory_2,
    Icons.person_rounded,
  ];

  final List<String> titles = [
    "NearbyOrders",
    "My Orders",
    "Profile",
  ];

  late final List<Widget> pages = [

    BlocProvider(
      create: (context) => getIt<NearbyOrdersCubit>(),
      child: const NearbyOrdersScreen(),
    ),
    BlocProvider(
      create: (context) => getIt<DriverOrdersCubit>(),
      child: const DriverOrdersScreen(),
    ),
    BlocProvider(
      create: (context) => getIt<DriverCubit>(),
      child: const DriverProfileScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blue5,

        /// ✅ BODY (pages switch)
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: pages[selectedIndex],
        ),

        /// ===================== BOTTOM NAV =====================
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: AppColors.white.withOpacity(0.85),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: AppColors.blue1.withOpacity(0.15),
                  blurRadius: 25,
                  offset: const Offset(0, 10),
                ),
              ],
              border: Border.all(
                color: AppColors.blue4.withOpacity(0.3),
              ),
            ),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),

              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 15,
                  sigmaY: 15,
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    icons.length,
                        (index) {
                      final bool isSelected = selectedIndex == index;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },

                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,

                          padding: EdgeInsets.symmetric(
                            horizontal: isSelected ? 18 : 0,
                            vertical: 12,
                          ),

                          decoration: BoxDecoration(
                            gradient: isSelected
                                ? const LinearGradient(
                              colors: [
                                AppColors.blue1,
                                AppColors.blue2,
                              ],
                            )
                                : null,

                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: Row(
                            children: [

                              Icon(
                                icons[index],
                                color: isSelected
                                    ? AppColors.white
                                    : AppColors.black3,
                                size: 28,
                              ),

                              AnimatedSwitcher(
                                duration: const Duration(milliseconds: 250),
                                child: isSelected
                                    ? Padding(
                                  padding:
                                  const EdgeInsets.only(left: 8),
                                  child: Text(
                                    titles[index],
                                    key: ValueKey(titles[index]),
                                    style: const TextStyle(
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                                    : const SizedBox(),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}