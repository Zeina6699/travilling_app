enum Season { Winter, Summer, Spring, Automn }

enum TripType { Exploration, Recovery, Activities, Therapy }

String seasonText(Season season){
  switch(season){
    case Season.Winter:return 'شتاء'; 
    case Season.Automn:return 'خريف'; 
    case Season.Spring:return 'ربيع';
    case Season.Summer:return 'صيف';
    default: return 'غير معروف';
  }
}

String tripText(TripType trip){
  switch(trip){
    case TripType.Therapy:return 'معالجة;'; 
    case TripType.Exploration:return 'استكشاف'; 
    case TripType.Recovery:return 'نقاهة';
    case TripType.Activities:return 'انشطة';
    default: return 'غير معروف';
  }
}

class TripModel {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> activities;
  final List<String> program;
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
      required this.program,
      required this.duration,
      required this.season,
      required this.tripType,
      required this.isInSummer,
      required this.isInWinter,
      required this.isForFamilies});
}
