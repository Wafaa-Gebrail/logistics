import 'dart:async';
import 'dart:io';
import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/features/driver-orders/data/repo/driver_orders.dart';
import 'package:delivery_platform/features/driver-orders/logic/driver_orders_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class DriverOrdersCubit extends Cubit<DriverOrdersState> {
  final DriverOrdersRepo _repo;

  DriverOrdersCubit(this._repo)
      : super(const DriverOrdersState.initial());

  Future<void> getDriverOrders() async {
    emit(const DriverOrdersState.loading());

    final result = await _repo.driverOrders();

    if (!isClosed) {
      result.when(
        success: (data) {
          emit(DriverOrdersState.loaded(data));
        },
        failure: (error) {
          emit(
            DriverOrdersState.error(
              error: error.apiErrorModel.message ?? "No Data Found",
            ),
          );
        },
      );
    }
  }

  Future<void> uploadProof({
    required File photo,
    required String orderId,
  }) async {
    emit(const DriverOrdersState.proofLoading());

    final result = await _repo.uploadProof(
      photo: photo,
      orderId: orderId,
    );

    result.when(
      success: (data) {
        emit(DriverOrdersState.proofSuccess(data.message));
      },
      failure: (error) {
        emit(
          DriverOrdersState.proofError(
            error.apiErrorModel.message ?? "Upload failed",
          ),
        );
      },
    );
  }
}