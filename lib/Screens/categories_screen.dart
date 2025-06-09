import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text('دليل سياحي'),
      ),
      body: GridView(
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 200,
          childAspectRatio:7/8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2

          
        ))

    );
  }
}