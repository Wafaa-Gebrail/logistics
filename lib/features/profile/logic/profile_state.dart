import 'package:delivery_platform/features/profile/data/model/driver_auth_response.dart';
import 'package:delivery_platform/features/register/data/model/auth_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _ProfileLoading;
  const factory ProfileState.loaded(User user) = _ProfileLoaded;
  const factory ProfileState.error({required String error}) = _ProfileError;

  const factory ProfileState.driverLoading() = _DriverLoading;
  const factory ProfileState.driverLoaded(DriverAuthResponse driverAuthResponse) = _DriverLoaded;
  const factory ProfileState.driverError({required String error}) = _DriverError;
}
