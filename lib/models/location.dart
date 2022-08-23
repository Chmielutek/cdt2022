class Location {
  final String id;
  final String name;
  final String venue;
  final String additionalInfo;
  final String? startTime;
  final String address;
  final Coordinates coordinates;
  final String pictureUrl;
  final String previewUrl;
  final String streetViewUrl;

  const Location(
      {required this.id,
      required this.name,
      required this.venue,
      required this.additionalInfo,
      this.startTime,
      required this.address,
      required this.coordinates,
      required this.pictureUrl,
      required this.previewUrl,
      required this.streetViewUrl
      });
}

class Coordinates {
  final double latitude;
  final double longitude;

  const Coordinates(this.latitude, this.longitude);
}
