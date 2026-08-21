import 'dart:async';

import 'package:delivery_platform/core/services/location_service.dart';
import 'package:delivery_platform/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PickupLocationScreen extends StatefulWidget {
  const PickupLocationScreen({super.key});

  @override
  State<PickupLocationScreen> createState() => _PickupLocationScreenState();
}

class _PickupLocationScreenState extends State<PickupLocationScreen> {
  GoogleMapController? mapController;

  LatLng selectedLocation = const LatLng(24.7136, 46.6753);

  Marker? marker;

  bool isLoading = true;

  String currentAddress = 'Loading location...';

  @override
  void initState() {
    super.initState();

    _initializeLocation();
  }

  Future<void> _initializeLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

      if (!serviceEnabled) {
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        return;
      }

      final position = await Geolocator.getCurrentPosition();

      selectedLocation = LatLng(position.latitude, position.longitude);

      currentAddress = await LocationService.getAddressFromLatLng(
        lat: position.latitude,
        lng: position.longitude,
      );

      marker = Marker(
        markerId: const MarkerId('pickup'),

        position: selectedLocation,

        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),

        infoWindow: const InfoWindow(title: 'Pickup Location'),
      );

      setState(() {
        isLoading = false;
      });

      await mapController?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: selectedLocation, zoom: 16),
        ),
      );
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> _onMapTap(LatLng location) async {
    setState(() {
      selectedLocation = location;

      marker = Marker(
        markerId: const MarkerId('pickup'),

        position: location,

        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      );
    });

    currentAddress = await LocationService.getAddressFromLatLng(
      lat: location.latitude,
      lng: location.longitude,
    );

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.white,

        centerTitle: true,

        title: const Text(
          'Select Pickup Location',
          style: TextStyle(
            color: AppColors.black1,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),

      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(color: AppColors.blue1),
            )
          : Stack(
              children: [
                GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: selectedLocation,
                    zoom: 15,
                  ),

                  myLocationEnabled: true,

                  myLocationButtonEnabled: true,

                  zoomControlsEnabled: false,

                  compassEnabled: true,

                  mapToolbarEnabled: false,

                  onMapCreated: (controller) {
                    mapController = controller;
                  },

                  markers: marker != null ? {marker!} : {},

                  onTap: _onMapTap,
                ),

                Positioned(
                  top: 20,
                  right: 20,
                  left: 20,
                  child: Container(
                    padding: const EdgeInsets.all(18),

                    decoration: BoxDecoration(
                      color: AppColors.white,

                      borderRadius: BorderRadius.circular(24),

                      boxShadow: [
                        BoxShadow(
                          color: AppColors.blue1.withOpacity(.08),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: AppColors.blue1,
                            ),

                            SizedBox(width: 8),

                            Text(
                              'Selected Location',
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                color: AppColors.black1,
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 14),

                        Text(
                          currentAddress,
                          style: const TextStyle(
                            color: AppColors.black2,
                            height: 1.5,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const SizedBox(height: 14),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 12,
                          ),

                          decoration: BoxDecoration(
                            color: AppColors.blue5,

                            borderRadius: BorderRadius.circular(16),
                          ),

                          child: Row(
                            children: [
                              const Icon(
                                Icons.gps_fixed,
                                size: 18,
                                color: AppColors.blue1,
                              ),

                              const SizedBox(width: 10),

                              Expanded(
                                child: Text(
                                  '${selectedLocation.latitude.toStringAsFixed(6)}, ${selectedLocation.longitude.toStringAsFixed(6)}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.black1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  right: 20,
                  left: 20,
                  bottom: 40,
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, {
                          'lat': selectedLocation.latitude,

                          'lng': selectedLocation.longitude,

                          'address': currentAddress,
                        });
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blue1,

                        elevation: 0,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),

                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check_circle_rounded,
                            color: AppColors.white,
                          ),

                          SizedBox(width: 10),

                          Text(
                            'Confirm Location',
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
