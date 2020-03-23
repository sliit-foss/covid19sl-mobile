import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Set _markers = {};
  Completer<GoogleMapController> _controller = Completer();
    LatLng pinPosition = LatLng(6.9225, 79.9182);


  @override
  Widget build(BuildContext context) {
    return Scaffold(  
           body: Stack(
      children: <Widget>[
        Container(
            child: GoogleMap(
              markers: _markers,
          initialCameraPosition:
              CameraPosition(target: LatLng(6.927079, 79.861244), zoom: 10),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
            
          setState(() {

            _markers.add(
            Marker(
               markerId: MarkerId('test'),
               infoWindow: InfoWindow(title: "IDH Hospital"),
               position: pinPosition,
            ));
            
          });


          }
        )
        ),
      ],
           )
    );
  }
}
