import 'package:flutter/material.dart';

import 'components/body.dart' show Body;

class BusList extends StatelessWidget {
  const BusList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus List'),
      ),
      body: const Body(),
    );
  }
}
