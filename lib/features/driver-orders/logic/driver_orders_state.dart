import 'package:delivery_platform/features/nearby-orders/data/model/nearby_orders.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'driver_orders_state.freezed.dart';

@freezed
class DriverOrdersState with _$DriverOrdersState {
  const factory DriverOrdersState.initial() = _Initial;
  const factory DriverOrdersState.loading() = _Loading;

  const factory DriverOrdersState.loaded(NearbyOrders driverOrders) = _Loaded;

  const factory DriverOrdersState.error({required String error}) = _Error;

  // 📸 Proof upload states
  const factory DriverOrdersState.proofLoading() = _ProofLoading;

  const factory DriverOrdersState.proofSuccess(String message) = _ProofSuccess;

  const factory DriverOrdersState.proofError(String error) = _ProofError;
}
