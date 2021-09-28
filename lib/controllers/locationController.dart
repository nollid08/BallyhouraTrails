import 'dart:async';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/foundation.dart';

class LocationController extends ChangeNotifier {
  Completer<void> locationStatus = Completer();
  LocationController() {
    Permission.location.request().isGranted.then(
      (status) async {
        if (status) {
          locationStatus.complete(null);
          notifyListeners();
        }
      },
    );

    // We didn't ask for permission yet or the permission has been denied before but not permanently.
  }
}
