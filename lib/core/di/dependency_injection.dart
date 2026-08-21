import 'package:delivery_platform/core/networking/all_api_service.dart';
import 'package:delivery_platform/core/networking/dio_factory.dart';
import 'package:delivery_platform/core/networking/tracking_api_service.dart';
import 'package:delivery_platform/core/services/tracking_hub_service.dart';
import 'package:delivery_platform/features/driver-orders/data/repo/driver_orders.dart';
import 'package:delivery_platform/features/driver-orders/logic/driver_orders_cubit.dart';
import 'package:delivery_platform/features/driver/data/repo/driver_repo.dart';
import 'package:delivery_platform/features/driver/logic/driver_cubit.dart';
import 'package:delivery_platform/features/login/data/repo/login_repo.dart';
import 'package:delivery_platform/features/login/logic/login_cubit.dart';
import 'package:delivery_platform/features/nearby-orders/data/repo/nearby_orders_repo.dart';
import 'package:delivery_platform/features/nearby-orders/logic/nearby_orders_cubit.dart';
import 'package:delivery_platform/features/order/data/repo/order_repo.dart';
import 'package:delivery_platform/features/order/logic/order_cubit.dart';
import 'package:delivery_platform/features/profile/data/repo/profile_repo.dart';
import 'package:delivery_platform/features/profile/logic/profile_cubit.dart';
import 'package:delivery_platform/features/register/data/repo/register_repo.dart';
import 'package:delivery_platform/features/register/logic/register_cubit.dart';
import 'package:delivery_platform/features/tracking/data/repo/tracking_repo.dart';
import 'package:delivery_platform/features/tracking/logic/tracking_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

/// registerLazySingleton: one instance for the all app
/// registerFactory: create more than one object (instance) each time call the cubit

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
 getIt.registerLazySingleton<AllApiService>(() => AllApiService(dio));
  getIt.registerLazySingleton<TrackingApiService>(() => TrackingApiService(dio));

  ///////////////////////////////////// User /////////////////////////////////////
  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

  // profile
  getIt.registerLazySingleton<ProfileRepo>(() => ProfileRepo(getIt()));
  getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt()));

  // order
  getIt.registerLazySingleton<OrderRepo>(() => OrderRepo(getIt()));
  getIt.registerFactory<OrderCubit>(() => OrderCubit(getIt()));

  // driver
  getIt.registerLazySingleton<DriverRepo>(() => DriverRepo(getIt()));
  getIt.registerFactory<DriverCubit>(() => DriverCubit(getIt()));

  // nearby orders
  getIt.registerLazySingleton<NearbyOrdersRepo>(() => NearbyOrdersRepo(getIt()));
  getIt.registerFactory<NearbyOrdersCubit>(() => NearbyOrdersCubit(
   getIt<NearbyOrdersRepo>(),
   getIt<TrackingHubService>(),));

  // driver orders
  getIt.registerLazySingleton<DriverOrdersRepo>(() => DriverOrdersRepo(getIt()));
  getIt.registerFactory<DriverOrdersCubit>(() => DriverOrdersCubit(getIt()));

  // tracking
  getIt.registerLazySingleton<TrackingRepo>(() => TrackingRepo(getIt()));
  getIt.registerLazySingleton<TrackingHubService>(
       () => TrackingHubService(),
  );
  getIt.registerFactory<TrackingCubit>(
    () => TrackingCubit(getIt<TrackingRepo>()),
  );

}
