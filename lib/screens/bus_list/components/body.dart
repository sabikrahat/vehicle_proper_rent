import 'package:flutter/material.dart';
import 'package:vehicle_proper_rent/models/bus_details.dart';
import 'package:vehicle_proper_rent/screens/bus_info_details/bus_info_details.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: busDetails.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BusInfoDetails(idx: index),
              ),
            ),
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.blue[100],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset(
                  busDetails[index].imgPath,
                  height: 55.0,
                  width: 55.0,
                ),
              ),
            ),
            title: Text(busDetails[index].busName),
            subtitle: Text(busDetails[index].busNumber),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        );
      },
    );
  }
}
