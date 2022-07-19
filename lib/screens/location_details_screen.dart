import 'package:calle_de_timberos/calle_data.dart';
import 'package:calle_de_timberos/models/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class LocationDetailsScreen extends StatelessWidget {
  static String routeName = '/about-us';

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LocationDetailsPicture(size, location),
          LocationDetailsAddress(size, location),
          LocationDetailsMap(size, location),
        ],
      ),
    );
  }
}

class LocationDetailsAddress extends StatelessWidget {
  final Size size;
  final Location location;

  LocationDetailsAddress(this.size, this.location);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.8,
      height: size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 50,
            color: Colors.black87.withOpacity(0.5)
          )
        ]
      ),
      child: Row(
        children: [
          Container(
            width: size.width * 0.6,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '${location.venue.toUpperCase()} \n',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      TextSpan(
                        text: '${location.address} \n',
                          style: TextStyle(color: Colors.black)
                      ),
                      if (location.startTime != null)
                      TextSpan(
                        text: '${location.startTime!} ',
                          style: TextStyle(color: Colors.black)
                      )
                    ]
                  )
              ),
            ),
          ),
          Container(
            width: size.width * 0.2,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.copy),
            ),
          )
          // Column(children: [
          //   Text(location.venue),
          //   Text(location.address),
          //   Text(location.address),
          //   if (location.startTime != null)
          //     Text('If party - start time')
          // ],),
        ],
      ),
    );
  }
}

class LocationDetailsPicture extends StatelessWidget {
  final Size size;
  final Location location;

  LocationDetailsPicture(this.size, this.location);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            height: size.height * 0.3,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/a2_street_view.png'),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36), bottomRight: Radius.circular(36))
            ),
          ),
          Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36), bottomRight: Radius.circular(36)),
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
            top: 5,
            right: 20,
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
    );
  }
}

class LocationDetailsMap extends StatelessWidget {
  final Size size;
  final Location location;

  LocationDetailsMap(this.size, this.location);

  Future<void> _launchGoogleMap(Location location) async {
    final lat = location.coordinates.latitude;
    final lng = location.coordinates.longitude;

    MapsLauncher.launchCoordinates(lat, lng);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.35,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/a2_location_preview.png'),
              fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(36), topRight: Radius.circular(36))
          ),
        ),
        Positioned(
          bottom: 20,
          left: 100,
          child: Card(
            elevation: 5,
            shadowColor: Colors.grey,
            child: Container(
              width: size.width / 2,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: FlatButton.icon(
                onPressed: () => _launchGoogleMap(location),
                icon: Icon(Icons.map),
                label: Text('View in Google Maps'),
                textColor: Colors.black87,
              ),
            ),
          ),
        )
      ],
    );
  }
}

