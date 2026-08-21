import 'package:delivery_platform/core/di/dependency_injection.dart';
import 'package:delivery_platform/core/routing/routes.dart';
import 'package:delivery_platform/features/driver-navbar/driver_bottom_nav_bar.dart';
import 'package:delivery_platform/features/driver-orders/logic/driver_orders_cubit.dart';
import 'package:delivery_platform/features/driver-orders/ui/my_order_details_screen.dart';
import 'package:delivery_platform/features/driver/logic/driver_cubit.dart';
import 'package:delivery_platform/features/driver/ui/driver_profile_screen.dart';
import 'package:delivery_platform/features/login/logic/login_cubit.dart';
import 'package:delivery_platform/features/login/ui/login_screen.dart';
import 'package:delivery_platform/features/navbar/bottom_nav_bar.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/nearby_orders.dart';
import 'package:delivery_platform/features/nearby-orders/logic/nearby_orders_cubit.dart';
import 'package:delivery_platform/features/nearby-orders/ui/driver_order_details_screen.dart';
import 'package:delivery_platform/features/nearby-orders/ui/nearby_orders_screen.dart';
import 'package:delivery_platform/features/order/logic/order_cubit.dart';
import 'package:delivery_platform/features/order/ui/create_order_screen.dart';
import 'package:delivery_platform/features/order/ui/order_details_screen.dart';
import 'package:delivery_platform/features/order/ui/widget/pickup_location_screen.dart';
import 'package:delivery_platform/features/profile/logic/profile_cubit.dart';
import 'package:delivery_platform/features/profile/ui/profile_screen.dart';
import 'package:delivery_platform/features/register/logic/register_cubit.dart';
import 'package:delivery_platform/features/register/ui/register_screen.dart';
import 'package:delivery_platform/features/splash/ui/splash_screen.dart';
import 'package:delivery_platform/features/tracking/logic/tracking_cubit.dart';
import 'package:delivery_platform/features/tracking/ui/tracking_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      ///////////////////////////////////// User /////////////////////////////////////
      // Splash Screen
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      // Register
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RegisterCubit>(),
            child: const RegisterScreen(),
          ),
        );

      // Login
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      // NavBarScreen
      case Routes.navbar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());

      // Profile
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ProfileCubit>(),
            child: const ProfileScreen(),
          ),
        );

      // Order Details
      case Routes.orderDetailsScreen:
        final orderId = settings.arguments as String;

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<OrderCubit>(),
            child: OrderDetailsScreen(orderId: orderId),
          ),
        );

      // Create Order Screen
      case Routes.createOrderScreen:
        return MaterialPageRoute(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => getIt<OrderCubit>()),
              BlocProvider(create: (context) => getIt<TrackingCubit>()),
            ],
            child: const CreateOrderScreen(),
          ),
        );

    // Tracking
      case Routes.trackingScreen:
        final orderId = settings.arguments as String;

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<TrackingCubit>(),
            child: TrackingScreen(orderId: orderId),
          ),
        );

      // PickupLocationScreen
      case Routes.pickupLocationScreen:
        return MaterialPageRoute(builder: (_) => const PickupLocationScreen());

      // DriverNavBarScreen
      case Routes.driverNavbar:
        return MaterialPageRoute(builder: (_) => const DriverBottomNavBar());

      // Driver Profile Screen
      case Routes.driverProfileScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<DriverCubit>(),
            child: const DriverProfileScreen(),
          ),
        );

      // Nearby Orders Screen
      case Routes.nearbyOrdersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<NearbyOrdersCubit>(),
            child: const NearbyOrdersScreen(),
          ),
        );

      // Driver Order Details Screen
      case Routes.driverOrderDetailsScreen:
        final order = settings.arguments as NearbyOrdersData;

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<NearbyOrdersCubit>(),
            child: DriverOrderDetailsScreen(order: order),
          ),
        );

    // Driver My Order Details Screen
      case Routes.driverMyOrderDetailsScreen:
        final order = settings.arguments as NearbyOrdersData;

        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<DriverOrdersCubit>(),
            child: MyOrderDetailsScreen(order: order),
          ),
        );

      default:
        return null;
    }
  }
}
