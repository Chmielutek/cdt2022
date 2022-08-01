import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import '../calle_data.dart';
import '../models/location.dart';
import '../screens/location_details_screen.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                child: Image.asset('assets/images/a2.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(location.name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(location.additionalInfo,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                          )
                      )
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
