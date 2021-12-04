import 'package:flutter/material.dart';
import 'package:vehicle_proper_rent/screens/home/components/drawer.dart';

import 'components/body.dart' show Body;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vehicle Proper Rent'),
      ),
      body: const Body(),
      drawer: const KDrawer(),
    );
  }
}

