import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travelling_app/Screens/categories_screen.dart';
import 'package:travelling_app/Screens/category_trips_screen.dart';

void main() {
  runApp(const TravellingApp());
}

class TravellingApp extends StatelessWidget {
  const TravellingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales:const [
        Locale('ar', 'AE'), // العربية
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: ThemeData.light().textTheme.copyWith(
          headlineLarge:const TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontFamily: 'El Messiri',
            fontWeight: FontWeight.bold
          ),
           headlineMedium:const TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontFamily: 'El Messiri',
            fontWeight: FontWeight.bold
          )
        ),
        primarySwatch: Colors.blue,
        fontFamily: 'El Messiri',
        useMaterial3: false
      ),
      routes: {
        '/category':(context)=>const CategoriesScreen(),
        '/trips':(context)=>const CategoryTripsScreen()
      },
    initialRoute:'/category'
    );
  }
}
