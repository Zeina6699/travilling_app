import 'package:flutter/material.dart';
import 'package:travelling_app/data.dart';

class CategoryTripsScreen extends StatelessWidget {
 const CategoryTripsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String categoryId = args['id'];
    final String categoryTitle = args['title'];

    return Scaffold(
    
   appBar: AppBar(title: Text(categoryTitle,style: TextStyle(fontFamily:'El Messiri'),),centerTitle: true, ),
   body: ListView.builder(
    itemCount: categoriesData.length,
    itemBuilder:(context,index){
      return 
    },
    ),
    );
  }
}