class Planet {
  Planet({
    required this.planetName,
    required this.pngImage,
    required this.title,
    required this.about,
    required this.distanceFromSunKm,
    required this.lengthOfDayHours,
    required this.orbitalPeriodYears,
    required this.radiusKm,
    required this.massKg,
    required this.gravity,
    required this.surfaceAreaKm2,
  });
  
  final String planetName;
  final String pngImage;
  final String title;
  final String about;
  final num distanceFromSunKm;
  final num lengthOfDayHours;
  final num orbitalPeriodYears;
  final num radiusKm;
  final String massKg;
  final num gravity;
  final String surfaceAreaKm2;
}
