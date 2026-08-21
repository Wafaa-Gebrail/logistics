import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/features/profile/data/model/driver_auth_request.dart';
import 'package:delivery_platform/features/profile/data/repo/profile_repo.dart';
import 'package:delivery_platform/features/profile/logic/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _repo;

  ProfileCubit(this._repo) : super(const ProfileState.initial());

  Future<void> getProfile() async {
    emit(const ProfileState.loading());

    final result = await _repo.profile();
    result.when(
      success: (profile) => emit(ProfileState.loaded(profile)),
      failure: (error) {
        print("Get Profile Failed: ${error.apiErrorModel.message}");
        emit(ProfileState.error(
          error: error.apiErrorModel.message ?? 'No Data Found',
        ));
      },
    );
  }

  Future<void> becomeDriver(DriverAuthRequest request) async {
    emit(const ProfileState.driverLoading());

    final result = await _repo.driverAuth(request);

    result.when(
      success: (data) {
        emit(ProfileState.driverLoaded(data));
      },
      failure: (error) {
        emit(
          ProfileState.driverError(
            error: error.apiErrorModel.message ?? 'Driver auth failed',
          ),
        );
      },
    );
  }

}
