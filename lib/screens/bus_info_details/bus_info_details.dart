import 'package:flutter/material.dart';

import 'components/body.dart';

class BusInfoDetails extends StatelessWidget {
  const BusInfoDetails({Key? key, required this.idx}) : super(key: key);

  final int idx;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bus Details'),
      ),
      body: Body(idx: idx),
    );
  }
}
