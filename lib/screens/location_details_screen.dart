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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Container(
                height: size.height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/a2_street_view.png'),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.transparent
                        ]
                      )
                    ),
                  )
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(location.venue,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]
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
          Column(
            children: [
              Container(
                height: size.height * 0.4,
                width: double.infinity,
                alignment: Alignment.center,
                child: Image.asset('assets/images/a2_location_preview.png'),
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
        ],
      ),
    );
  }
}
