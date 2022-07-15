import 'package:calle_de_timberos/calle_data.dart';
import 'package:calle_de_timberos/models/location.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class LocationDetailsScreen extends StatelessWidget {
  static String routeName = '/about-us';

  Future<void> _launchGoogleMap(Location location) async {
    final lat = location.coordinates.latitude;
    final lng = location.coordinates.longitude;

    MapsLauncher.launchCoordinates(lat, lng);
  }

  @override
  Widget build(BuildContext context) {
    final locationId = ModalRoute.of(context)?.settings.arguments;
    final location = LOCATIONS.firstWhere((location) => location.id == locationId);
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.amberAccent,
            elevation: 4,
            shadowColor: Colors.redAccent,
            child: Container(
              height: 120,
              width: double.infinity,
              child: Image.asset('assets/images/a2.png'),
            ),
          ),
          Column(
            children: [
              Text(location.venue),
              Text(location.address),
              Text(location.address),
              if (location.startTime != null)
                Text('If party - start time')
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
              child: Image.asset('assets/images/a2_location_preview.png'),
            ),
          ),
          Center(
            child: FlatButton.icon(
              onPressed: () => _launchGoogleMap(location),
              icon: Icon(Icons.map),
              label: Text('View in Google Maps'),
              textColor: Colors.black87,
            ),
          )
        ],
      ),
    );
  }
}
