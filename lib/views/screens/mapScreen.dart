import 'package:flutter/material.dart';
import 'package:ballyhoura_mtb/views/widgets/map.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Ballyhoura Trails')),
      ),
      body: Map(),
    );
  }
}
