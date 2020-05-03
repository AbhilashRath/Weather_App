import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';

class Address{
  Address({@required this.latitude,@required this.longitude });
  final latitude;
  final longitude;
  Future<String> getAddress() async {
    final coordinates = new Coordinates(latitude, longitude);
    var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;
    //adminArea: State
    //locality: city
    String finalString = first.locality  +', ' + first.adminArea;
    return finalString;
  }
}