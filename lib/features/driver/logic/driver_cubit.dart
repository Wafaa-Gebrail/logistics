import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/features/driver/data/model/driver_profile.dart';
import 'package:delivery_platform/features/driver/data/model/driver_status.dart';
import 'package:delivery_platform/features/driver/data/repo/driver_repo.dart';
import 'package:delivery_platform/features/driver/logic/driver_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DriverCubit extends Cubit<DriverState> {
  final DriverRepo _repo;

  DriverCubit(this._repo)
      : super(const DriverState.initial());

  DriverProfile? currentProfile;
  bool isOnline = false;

  Future<void> getProfile() async {
    emit(const DriverState.loading());

    final result = await _repo.driverProfile();

    result.when(
      success: (driverProfile) {

        currentProfile = driverProfile;

        isOnline =
            driverProfile.status == "online";

        emit(
          DriverState.loaded(driverProfile),
        );
      },

      failure: (error) {
        emit(
          DriverState.error(
            error:
            error.apiErrorModel.message ??
                'No Data Found',
          ),
        );
      },
    );
  }

  Future<void> driverStatusToggle() async {

    if (currentProfile == null) return;

    /// optimistic update
    isOnline = !isOnline;

    currentProfile = currentProfile!.copyWith(
      status: isOnline
          ? "online"
          : "offline",
    );

    /// rebuild ui مباشرة
    emit(
      DriverState.loaded(currentProfile!),
    );

    /// background api
    final result = await _repo.driverStatus(
      DriverStatus(
        status: isOnline
            ? "online"
            : "offline",
      ),
    );

    /// rollback إذا فشل
    result.when(
      success: (_) {},

      failure: (error) {

        isOnline = !isOnline;

        currentProfile =
            currentProfile!.copyWith(
              status: isOnline
                  ? "online"
                  : "offline",
            );

        emit(
          DriverState.loaded(currentProfile!),
        );

        emit(
          DriverState.driverStatusError(
            error:
            error.apiErrorModel.message ??
                "Failed",
          ),
        );
      },
    );
  }
}
