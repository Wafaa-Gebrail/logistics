import 'package:delivery_platform/features/driver/data/model/driver_profile.dart';
import 'package:delivery_platform/features/driver/data/model/driver_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'driver_state.freezed.dart';

@freezed
class DriverState with _$DriverState {
  const factory DriverState.initial() = _Initial;
  const factory DriverState.loading() = _DriverProfileLoading;
  const factory DriverState.loaded(DriverProfile driverProfile) = _DriverProfileLoaded;
  const factory DriverState.error({required String error}) = _DriverProfileError;

  const factory DriverState.driverStatusLoading() = _DriverStatusLoading;
  const factory DriverState.driverStatusLoaded(DriverStatus driverStatus) = _DriverStatusLoaded;
  const factory DriverState.driverStatusError({required String error}) = _DriverStatusError;

}
