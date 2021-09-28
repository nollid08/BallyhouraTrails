import 'package:ballyhoura_mtb/controllers/locationController.dart';
import 'package:ballyhoura_mtb/controllers/mapController.dart';
import 'package:ballyhoura_mtb/views/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/screens/mapScreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MapController()),
        ChangeNotifierProvider(
          create: (context) => LocationController(),
          lazy: false,
        ),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ballyhoura Trails',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
    );
  }
}
