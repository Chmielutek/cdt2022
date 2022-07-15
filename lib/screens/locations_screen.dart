import 'package:calle_de_timberos/calle_data.dart';
import 'package:calle_de_timberos/models/location.dart';
import 'package:calle_de_timberos/screens/location_details_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class LocationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      body: Container(
        height: 600,
        width: double.infinity,
        child: ListView(
          children: LOCATIONS.map((location) => LocationCard(location)).toList(),
        ),
      ),
    );
  }
}

class LocationCard extends StatelessWidget {
  Location location;

  LocationCard(this.location);

  void goToLocationDetails(BuildContext context) {
    Navigator.of(context).pushNamed(LocationDetailsScreen.routeName, arguments: location.id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goToLocationDetails(context),
      child: Container(
        height: 100,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                child: Image.asset('assets/images/a2.png'),
              ),
              Column(
                children: [
                  Text(location.name),
                  Text(location.additionalInfo)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
