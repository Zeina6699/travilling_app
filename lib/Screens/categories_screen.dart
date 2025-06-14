import 'package:flutter/material.dart';
import 'package:travelling_app/data.dart';
import 'package:travelling_app/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 200,
            childAspectRatio:7/8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2),
            children: categoriesList.map((c)=>CategoryItem(title:c.title, imgUrl:c.imageUrl,id: c.id,)).toList()
            ),
      );}}