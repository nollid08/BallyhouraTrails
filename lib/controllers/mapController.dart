import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends ChangeNotifier {
  Completer<GoogleMapController> controller = Completer();

  static final CameraPosition _initialPos = CameraPosition(
    target: LatLng(52.319289, -8.507217),
    zoom: 13.4746,
  );
  CameraPosition get initialPos => _initialPos;
}
