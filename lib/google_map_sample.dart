import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:responsive_ui/GoogleMap/Controller/location_controller.dart';

class MapSample extends StatefulWidget {
  final double? lat;
  final double? lon;
  const MapSample({super.key, this.lat, this.lon});

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  LocationController locationController = Get.put(LocationController());

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  // static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 500,
          child: GoogleMap(
            myLocationEnabled: true,
            mapType: MapType.terrain,
            markers: {
              Marker(
                markerId: const MarkerId('user_location'),
                position: LatLng(widget.lat!, widget.lon!),
                infoWindow: const InfoWindow(title: 'Your Location'),
              ),
            },
            polylines: {
              Polyline(
                polylineId: const PolylineId("second value"),
                jointType: JointType.round,
                endCap: Cap.buttCap,
                color: Colors.blue.shade700,
                width: 5,
                points: [
                  LatLng(widget.lat!, widget.lon!),
                  LatLng(widget.lat! + 0.005, widget.lon! + 0.01),
                ],
              ),
            },

            // circles: {
            //   Circle(
            //     strokeWidth: 150,
            //     strokeColor: Colors.grey.withOpacity(0.15),
            //     circleId: const CircleId("Anupam"),
            //     center: LatLng(widget.lat!, widget.lon!),
            //     radius: 2,
            //   ),
            // },
            initialCameraPosition: CameraPosition(
              target: LatLng(widget.lat!, widget.lon!),
              zoom: 15,
            ),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
