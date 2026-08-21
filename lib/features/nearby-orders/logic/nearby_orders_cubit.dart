import 'dart:async';
import 'package:delivery_platform/core/networking/api_result.dart';
import 'package:delivery_platform/core/services/tracking_hub_service.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/accept_order.dart';
import 'package:delivery_platform/features/nearby-orders/data/model/driver_location.dart';
import 'package:delivery_platform/features/nearby-orders/data/repo/nearby_orders_repo.dart';
import 'package:delivery_platform/features/nearby-orders/logic/nearby_orders_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

class NearbyOrdersCubit extends Cubit<NearbyOrdersState> {
  final NearbyOrdersRepo _repo;
  final TrackingHubService _hub;

  Timer? _locationTimer;
  Timer? _orderTrackingTimer;

  NearbyOrdersCubit(
      this._repo,
      this._hub,
      ) : super(const NearbyOrdersState.initial());

  // =======================
  // GET ORDERS
  // =======================
  Future<void> getNearbyOrders() async {
    emit(const NearbyOrdersState.loading());

    final result = await _repo.nearbyOrders();

    result.when(
      success: (data) {
        emit(NearbyOrdersState.loaded(data));
      },
      failure: (error) {
        emit(
          NearbyOrdersState.error(
            error: error.apiErrorModel.message ?? "No Data Found",
          ),
        );
      },
    );
  }

  // =======================
  // UPDATE LOCATION
  // =======================
  Future<void> driverLocation(DriverLocation location) async {
    final result = await _repo.driverLocation(location);

    result.when(
      success: (_) {},
      failure: (error) {
        emit(
          NearbyOrdersState.driverLocationError(
            error: error.apiErrorModel.message ?? "Location update failed",
          ),
        );
      },
    );
  }

  // =======================
  // START TRACKING
  // =======================
  Future<void> startTracking() async {
    await _requestPermission();

    await _sendLocationAndFetchOrders();

    _locationTimer = Timer.periodic(
      const Duration(minutes: 5),
          (_) async {
        await _sendLocation();
      },
    );
  }

  Future<void> _sendLocationAndFetchOrders() async {
    await _sendLocation();
    await getNearbyOrders();
  }

  Future<void> _sendLocation() async {
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    final location = DriverLocation(
      latitude: position.latitude,
      longitude: position.longitude,
      accuracy: position.accuracy.toInt(),
    );

    await driverLocation(location);
  }

  Future<void> _requestPermission() async {
    await Geolocator.requestPermission();
  }

  void stopTracking() {
    _locationTimer?.cancel();
  }

  Future<void> acceptOrder(
      AcceptOrder acceptOrder,
      ) async {
    emit(const NearbyOrdersState.acceptOrderLoading());

    final result = await _repo.acceptOrder(acceptOrder);

    result.when(
      success: (_) async {
        emit(const NearbyOrdersState.acceptOrderSuccess());

        // =========================
        // 🚀 START SIGNALR TRACKING
        // =========================

        await _hub.startConnection();
        await _hub.joinOrder(acceptOrder.orderId);

        _startOrderLiveTracking(acceptOrder.orderId);

        // refresh orders
        await getNearbyOrders();
      },

      failure: (error) {
        emit(
          NearbyOrdersState.acceptOrderError(
            error: error.apiErrorModel.message ?? "Accept order failed",
          ),
        );
      },
    );
  }

  void _startOrderLiveTracking(String orderId) {
    _orderTrackingTimer?.cancel();

    _orderTrackingTimer = Timer.periodic(
      const Duration(seconds: 5),
          (_) async {

        final position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        await _hub.updateLocation(
          latitude: position.latitude.toString(),
          longitude: position.longitude.toString(),
          orderId: orderId,
        );
      },
    );
  }
}