import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_proper_rent/helpers/size_config/size_config.dart';
import 'package:vehicle_proper_rent/models/bus_details.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
    required this.idx,
  }) : super(key: key);

  final int idx;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late BusDetails busInfo;

  @override
  void initState() {
    super.initState();
    busInfo = busDetails[widget.idx];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: mainMin,
        children: [
          Image.asset(
            busInfo.imgPath,
            width: ScreenSize.width * 0.8,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            busInfo.busName,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            busInfo.busNumber,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          BarcodeWidget(
            height: 150.0,
            width: 150.0,
            barcode: Barcode.qrCode(),
            color: Colors.blue,
            data: busInfo.uid,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton.icon(
            icon: const Icon(
              Icons.bus_alert_outlined,
              color: Colors.blue,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            label: const Text(
              'Take a Ride',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
