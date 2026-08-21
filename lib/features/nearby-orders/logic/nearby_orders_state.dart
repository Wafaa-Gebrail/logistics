
import 'package:delivery_platform/features/nearby-orders/data/model/driver_location.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/nearby_orders.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'nearby_orders_state.freezed.dart';

@freezed
class NearbyOrdersState with _$NearbyOrdersState {
  const factory NearbyOrdersState.initial() = _Initial;
  const factory NearbyOrdersState.loading() = _NearbyOrdersLoading;
  const factory NearbyOrdersState.loaded(NearbyOrders nearbyOrders) = _NearbyOrdersLoaded;
  const factory NearbyOrdersState.error({required String error}) = _NearbyOrdersError;

  const factory NearbyOrdersState.driverLocationLoading() = _DriverLocationLoading;
  const factory NearbyOrdersState.driverLocationLoaded(DriverLocation driverLocation) = _DriverLocationLoaded;
  const factory NearbyOrdersState.driverLocationError({required String error}) = _DriverLocationError;

  const factory NearbyOrdersState.acceptOrderLoading() = _AcceptOrderLoading;
  const factory NearbyOrdersState.acceptOrderSuccess() = _AcceptOrderSuccess;
  const factory NearbyOrdersState.acceptOrderError({
    required String error,
  }) = _AcceptOrderError;
}
