import 'package:ballyhoura_mtb/controllers/mapController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/screens/mapScreen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MapController(), child: App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ballyhoura Trails',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
    );
  }
}
