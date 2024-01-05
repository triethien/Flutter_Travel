import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MapPage> {
  late GoogleMapController googleMapController;
  final Completer<GoogleMapController> _controller= Completer();
  static const CameraPosition _initialPosition= CameraPosition(
  target: LatLng(10.955186622293313, 106.80263203727114),
  zoom: 14);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: GoogleMap(
      initialCameraPosition: _initialPosition,
      onMapCreated: (GoogleMapController controller )
      {
        _controller.complete(controller);
      },
      ),
      
      ),
    );
  }
}