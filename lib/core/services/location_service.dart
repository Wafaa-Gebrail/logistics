import 'package:geocoding/geocoding.dart';

class LocationService {
  static Future<String> getAddressFromLatLng({
    required double lat,
    required double lng,
  }) async {
    try {
      final placemarks =
      await placemarkFromCoordinates(
        lat,
        lng,
      );

      if (placemarks.isEmpty) {
        return 'Unknown Location';
      }

      final place = placemarks.first;

      return [
        place.street,
        place.subLocality,
        place.locality,
        place.country,
      ]
          .where(
            (e) =>
        e != null &&
            e.trim().isNotEmpty,
      )
          .join(', ');
    } catch (e) {
      return 'Unknown Location';
    }
  }
}