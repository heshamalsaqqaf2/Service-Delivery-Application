import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:service_request/common/extension.dart';

import '../../common/color_extension.dart';
import '../profile/rate_of_service_screen.dart';

class SelectedLocation extends StatefulWidget {
  const SelectedLocation({super.key});

  @override
  State<SelectedLocation> createState() => SelectedLocationState();
}

class SelectedLocationState extends State<SelectedLocation> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 10.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        backgroundColor: TColor.primary,
        actions: [
          Padding(
            padding:
                const EdgeInsets.only(left: 5, right: 0, bottom: 0, top: 0),
            child: IconButton(
              onPressed: () => context.push(const RateOfServiceScreen()),
              icon: Image.asset(
                "assets/img/menu-88.png",
                height: 28,
              ),
            ),
          ),
        ],
        title: Row(
          children: [
            Image.asset(
              "assets/img/logo-light.png",
              height: 30,
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: 640,
        child: GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: TColor.primary,
        onPressed: _goToTheLake,
        label: const Text(
          'تحديد موقعي الحالي',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        icon: const Icon(Icons.directions),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
