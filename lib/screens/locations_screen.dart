import 'package:calle_de_timberos/calle_data.dart';
import 'package:calle_de_timberos/models/location.dart';
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
          children: PARTIES.map((party) => LocationCard(party)).toList() +
              LOCATIONS.map((location) => LocationCard(location)).toList(),
        ),
      ),
    );
  }
}

class LocationCard extends StatelessWidget {
  Location location;

  LocationCard(this.location);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(location.name),
            Text(location.additionalInfo)
          ],
        ),
      ),
    );
  }
}
