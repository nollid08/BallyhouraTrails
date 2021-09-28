import 'package:ballyhoura_mtb/controllers/mapController.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class Map extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.terrain,
      initialCameraPosition: context.read<MapController>().initialPos,
      onMapCreated: (GoogleMapController controller) {
        context.read<MapController>().controller.complete(controller);
      },
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
    );
  }
}
