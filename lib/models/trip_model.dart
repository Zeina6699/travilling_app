enum Season { Winter, Summer, Spring, Automn }

enum TripType { Exploration, Recovery, Activities, Therapy }

class TripModel {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> activities;
  final List<String> programs;
  final int duration;
  final Season season;
  final TripType tripType;
  final bool isInSummer;
  final bool isInWinter;
  final bool isForFamilies;

  TripModel(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.categories,
      required this.activities,
      required this.programs,
      required this.duration,
      required this.season,
      required this.tripType,
      required this.isInSummer,
      required this.isInWinter,
      required this.isForFamilies});
}
