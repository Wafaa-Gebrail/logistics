import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:delivery_platform/features/tracking/logic/tracking_cubit.dart';
import 'package:delivery_platform/features/tracking/logic/tracking_state.dart';
import 'package:delivery_platform/core/services/tracking_hub_service.dart';

class TrackingScreen extends StatefulWidget {
  final String orderId;

  const TrackingScreen({super.key, required this.orderId});

  @override
  State<TrackingScreen> createState() => _TrackingScreenState();
}

class _TrackingScreenState extends State<TrackingScreen> {
  final TrackingHubService _hubService = TrackingHubService();
  final ValueNotifier<LatLng?> _driverLocation = ValueNotifier(null);
  GoogleMapController? _mapController;

  @override
  void initState() {
    super.initState();
    context.read<TrackingCubit>().startTracking(widget.orderId);
    _initSignalR();
  }

  Future<void> _initSignalR() async {
    await _hubService.startConnection();
    await _hubService.joinOrder(widget.orderId);

    _hubService.onLocationUpdate = (data) {
      if (!mounted) return;
      try {
        final lat = double.parse(data['latitude'].toString());
        final lng = double.parse(data['longitude'].toString());
        _driverLocation.value = LatLng(lat, lng);
        _mapController?.animateCamera(CameraUpdate.newLatLng(LatLng(lat, lng)));
      } catch (e) {
        debugPrint('❌ Error parsing location: $e');
      }
    };
  }

  @override
  void dispose() {
    _hubService.clearListeners();
    _hubService.leaveOrder(widget.orderId);
    _hubService.stopConnection();
    _driverLocation.dispose();
    super.dispose();
  }

  LatLng _toLatLng(String lat, String lng) =>
      LatLng(double.parse(lat), double.parse(lng));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TrackingCubit, TrackingState>(
        // Only rebuild for loading/error/initial — NOT for every live update
        buildWhen: (prev, curr) => curr == prev ? false : curr.maybeWhen(trackingSuccess: (_) => true, trackingLoading: () => true, trackingError: (_) => true, initial: () => true, orElse: () => false),
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const Center(child: Text('Preparing tracking...')),
            trackingLoading: () => const Center(child: CircularProgressIndicator()),
            trackingError: (error) => Center(child: Text(error)),
            trackingSuccess: (data) {
              final pickup = _toLatLng(
                data.pickupLocation.latitude,
                data.pickupLocation.longitude,
              );
              final dropoff = _toLatLng(
                data.dropoffLocation.latitude,
                data.dropoffLocation.longitude,
              );
              final initialDriver = data.currentLocation != null
                  ? _toLatLng(
                      data.currentLocation!.latitude,
                      data.currentLocation!.longitude,
                    )
                  : pickup;

              // Seed the notifier with the API location if not yet set by SignalR
              _driverLocation.value ??= initialDriver;

              return Stack(
                children: [
                  // GoogleMap is built ONCE — never rebuilt by SignalR updates
                  ValueListenableBuilder<LatLng?>(
                    valueListenable: _driverLocation,
                    builder: (context, driverPos, _) {
                      final markers = <Marker>{
                        Marker(
                          markerId: const MarkerId('pickup'),
                          position: pickup,
                          icon: BitmapDescriptor.defaultMarkerWithHue(
                              BitmapDescriptor.hueBlue),
                        ),
                        Marker(
                          markerId: const MarkerId('dropoff'),
                          position: dropoff,
                          icon: BitmapDescriptor.defaultMarkerWithHue(
                              BitmapDescriptor.hueAzure),
                        ),
                        if (driverPos != null)
                          Marker(
                            markerId: const MarkerId('driver'),
                            position: driverPos,
                            icon: BitmapDescriptor.defaultMarkerWithHue(
                                BitmapDescriptor.hueRed),
                            infoWindow: const InfoWindow(title: 'Driver'),
                          ),
                      };

                      return GoogleMap(
                        onMapCreated: (controller) =>
                            _mapController = controller,
                        initialCameraPosition: CameraPosition(
                          target: initialDriver,
                          zoom: 13,
                        ),
                        markers: markers,
                      );
                    },
                  ),
                  Positioned(
                    bottom: 24,
                    left: 16,
                    right: 16,
                    child: _InfoCard(
                      expectedTime: data.expectedDeliveryTime,
                      distance: data.distances.car,
                    ),
                  ),
                ],
              );
            },
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final DateTime? expectedTime;
  final dynamic distance;

  const _InfoCard({required this.expectedTime, required this.distance});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(blurRadius: 12, color: Colors.black.withOpacity(0.1)),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Icon(Icons.local_shipping, color: Colors.blue),
                const SizedBox(width: 8),
                Text('Live Tracking',
                    style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.access_time, size: 18),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(expectedTime != null
                      ? 'ETA: ${expectedTime!.toLocal()}'
                      : 'ETA: calculating...'),
                ),
              ],
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                const Icon(Icons.route, size: 18),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                      'Car: ${distance.distanceKm} km • ${distance.durationMinutes} min'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
