import 'package:ballyhoura_mtb/controllers/locationController.dart';
import 'package:ballyhoura_mtb/views/screens/mapScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (context.watch<LocationController>().locationStatus.isCompleted) {
      Future.delayed(
        Duration.zero,
        () => {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => MapScreen(),
            ),
          ),
        },
      );
    }

    return Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/img/logo.png')),
      ),
    );
  }
}
