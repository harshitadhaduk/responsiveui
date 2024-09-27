import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/GoogleMap/Controller/location_controller.dart';
import 'package:responsive_ui/google_map_sample.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  LocationController locationController = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("Latitude : ${locationController.latitude.value}"),
            ),
            Obx(
              () => Text("Longitude : ${locationController.longitude.value}"),
            ),
            Obx(
              () => Text(locationController.address.value),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapSample(
                      lat: locationController.latitude.value,
                      lon: locationController.longitude.value,
                    ),
                  ),
                );
              },
              child: const Text("Show in Map"),
            ),
          ],
        ),
      ),
    );
  }
}
