import 'package:cod3r_store_app/screens/meal_datail_screen.dart';
import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';
import 'utils/app_routes.dart';
import '../models/meal.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Vamos cozinhar?',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
          fontFamily: 'Raleway',
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                  fontSize: 20, fontFamily: 'RobotoCondensed'))),
      // home: const CategoriesScreen(),

      routes: {
        AppRputes.HOME: (ctx) => const CategoriesScreen(),
        AppRputes.CATEGORIES_MEALS : (ctx) => const CategoriesMealsScreen(),
        AppRputes.MEAL_DETAIL : (ctx) => const MealDetailScreen(),
      }
    );
  }
}
