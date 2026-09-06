import 'package:domain/domain.dart';

/// Service interface for location actions.
abstract class LocationService {
  Future<UserLocation?> getCurrentLocation();
}

class GeolocatorLocationService implements LocationService {
  @override
  Future<UserLocation?> getCurrentLocation() async {
    return null;
  }
}
