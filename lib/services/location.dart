
import 'package:geolocator/geolocator.dart';

class Location{
  double longitude;
  double lattitude;

  Future<void> getLocation() async {
    try {
      Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      longitude = position.longitude;
      lattitude = position.latitude;
    } catch (e) {
      print(e);
    }
  }
}