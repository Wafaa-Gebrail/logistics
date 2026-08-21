import 'package:delivery_platform/features/tracking/data/model/tracking_request.dart';
import 'package:delivery_platform/features/tracking/data/model/tracking_response.dart';
import 'package:delivery_platform/features/tracking/data/repo/tracking_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:delivery_platform/core/networking/api_result.dart';
import 'tracking_state.dart';

class TrackingCubit extends Cubit<TrackingState> {
  final TrackingRepo _trackingRepo;

  TrackingCubit(this._trackingRepo) : super(const TrackingState.initial());

  Future<void> startTracking(String orderId) async {
    emit(const TrackingState.trackingLoading());

    final result = await _trackingRepo.trackingDetails(orderId);

    result.when(
      success: (TrackingResponse data) {
        emit(TrackingState.trackingSuccess(data));
      },
      failure: (error) {
        emit(TrackingState.trackingError(
          error: error.apiErrorModel.message ?? 'Something went wrong',
        ));
      },
    );
  }

  Future<void> createTracking(TrackingRequest trackingRequest) async {
    emit(const TrackingState.trackingLoading());

    final result = await _trackingRepo.createTracking(trackingRequest);

    result.when(
      success: (TrackingResponse data) {
        emit(TrackingState.trackingSuccess(data));
      },
      failure: (error) {
        emit(TrackingState.trackingError(
          error: error.apiErrorModel.message ?? 'Something went wrong',
        ));
      },
    );
  }
}