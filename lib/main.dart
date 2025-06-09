import 'package:flutter/material.dart';
import 'package:travelling_app/Screens/categories_screen.dart';

void main() {
  runApp(const TravellingApp());
}

class TravellingApp extends StatelessWidget {
  const TravellingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false
      ),
      home: CategoriesScreen()
    );
  }
}
