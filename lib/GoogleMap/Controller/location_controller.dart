import 'dart:async';
import 'dart:developer';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

class LocationController extends GetxController {
  var latitude = 0.0.obs;
  var longitude = 0.0.obs;
  var address = "".obs;
  late StreamSubscription<Position> streamSubscription;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getLocation();
  }

  void getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Geolocator.openLocationSettings();
      return Future.error("Location services are disabled.");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      return Future.error("Please check permission");
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error("Not Possible");
    }

    streamSubscription = Geolocator.getPositionStream().listen(
      (position) {
        latitude.value = position.latitude;
        longitude.value = position.longitude;
        getFromLatLon(position);
      },
    );
  }

  void getFromLatLon(Position position) async {
    List<Placemark> placeMark =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placeMark[0];
    address.value = "Address : ${place.locality}, ${place.country}";
  }
}

// target: LatLng(
//     locationController.latitude.value, locationController.longitude.value),
