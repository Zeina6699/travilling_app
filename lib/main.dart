import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
          headlineLarge: TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.bold
          ),
           headlineMedium: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.bold
          )
        ),
        primarySwatch: Colors.blue,
        fontFamily: 'ElMessiri',
        useMaterial3: false
      ),
      home: CategoriesScreen()
    );
  }
}
