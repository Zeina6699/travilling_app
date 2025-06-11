import 'package:flutter/material.dart';
import 'package:travelling_app/data.dart';
import 'package:travelling_app/models/trip_model.dart';
import 'package:travelling_app/widgets/trip_item.dart';

class CategoryTripsScreen extends StatelessWidget {
  CategoryTripsScreen({super.key});
TripModel? tripModel;


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String categoryId = args['id'];
    final String categoryTitle = args['title'];
    final  filteredTrips=TripsList.where((tripp){
 return tripp.categories.contains(categoryId);
    }).toList();

    return Scaffold(
    
   appBar: AppBar(title: Text(categoryTitle,style: TextStyle(fontFamily:'El Messiri'),),centerTitle: true, ),
   body: ListView.builder(
    itemCount: filteredTrips.length,
    itemBuilder:(context,index){
      return TripItem(duration: filteredTrips[index].duration,imgUrl: filteredTrips[index].imageUrl,season:  filteredTrips[index].season,title: filteredTrips[index].title,tripType: filteredTrips[index].tripType,);
    },
    ),
    );
  }
}