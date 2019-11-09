import 'package:flutter/material.dart';
import './screens/catergories_screen.dart';
import './screens/category_card_screen.dart';
import './screens/meal_card_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.deepPurpleAccent,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 50, 50, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 50, 50, 1),
              ),
              title: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
      ),
      routes: {
        '/': (_) => CategoriesScreen(),
        CategoryCardScreen.routeName: (_) => CategoryCardScreen(),
        MealCardScreen.routeName: (_) => MealCardScreen(),
      },
    );
  }
}
