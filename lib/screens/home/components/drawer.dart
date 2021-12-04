import 'package:flutter/material.dart';
import 'package:vehicle_proper_rent/screens/bus_list/bus_list.dart';

class KDrawer extends StatelessWidget {
  const KDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue[400],
            ),
            accountName:
                const Text('Vehicle Rent', style: TextStyle(fontSize: 15.0)),
            accountEmail: const Text(
                'A app where you can get the proper rent of vehicles.',
                style: TextStyle(fontSize: 13.0)),
            currentAccountPicture: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: const Image(
                image: AssetImage('assets/icons/logo.jpg'),
                width: 50.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.bus_alert),
            title: const Text("See Buses"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BusList(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("Chats"),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => MessageLogPage(),
              //   ),
              // );
            },
          ),
        ],
      ),
    );
  }
}
