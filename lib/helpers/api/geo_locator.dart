import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocatorApi {
  Future<String> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);

    List<Placemark> placeMarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    Placemark mPlaceMark = placeMarks[0];

    // returning the city and country only
    // return "${mPlaceMark.subLocality}, ${mPlaceMark.locality}, ${mPlaceMark.country}";
    return "${mPlaceMark.locality}, ${mPlaceMark.country}";
  }
}
