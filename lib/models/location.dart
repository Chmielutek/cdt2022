class Location {
  final String id;
  final String name;
  final String venue;
  final String additionalInfo;
  final String? startTime;
  final String address;
  // TODO change to a pin
  final Coordinates coordinates;
  final String pictureUrl;

  Location(
      {required this.id,
      required this.name,
      required this.venue,
      required this.additionalInfo,
      this.startTime,
      required this.address,
      required this.coordinates,
      required this.pictureUrl
      });
}

class Coordinates {
  final double latitude;
  final double longitude;

  Coordinates(this.latitude, this.longitude);
}
