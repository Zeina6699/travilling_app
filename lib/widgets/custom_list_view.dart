
import 'package:flutter/material.dart';
import 'package:travelling_app/models/trip_model.dart';

class CustomListView extends StatelessWidget {
 CustomListView({
    super.key,
    required this.selectedTrip,
    required this.itemCount,
    required this.itemBuilder
  });

  final TripModel selectedTrip;
  int itemCount;
  Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       color: Colors.white,
       border: Border.all(color: Colors.grey),
       borderRadius: BorderRadius.circular(10)
     ),
     height: 200,
     padding: const EdgeInsets.all(10),
     margin: const EdgeInsets.symmetric(horizontal: 15),
     child: ListView.builder(
       itemCount:itemCount,
       itemBuilder:itemBuilder));
       }
     
  }

