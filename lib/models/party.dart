import 'location.dart';

class Party extends Location {
  String name;
  late String venue;
  String additionalInfo;
  String address;
  // TODO change to a pin
  String location;

  Party({required this.name, required this.venue, required this.additionalInfo, required this.address, required this.location}) :
        super(name: name, additionalInfo: additionalInfo, address: address, location: location) {
    this.venue = venue;
  }
}