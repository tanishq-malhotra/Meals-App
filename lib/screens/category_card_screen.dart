import 'package:flutter/material.dart';
import '../models/dummy_data.dart';
import '../widgets/meal_card.dart';

class CategoryCardScreen extends StatelessWidget {
  static const routeName = '/category-card-screen';

  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final meals = Dummy_Meals.where((meal) {
      return meal.categories.contains(routesArgs['id']);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(routesArgs['title']),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) => MealCard(
            id: meals[index].id,
            title: meals[index].title,
            affordability: meals[index].affordability,
            complexity: meals[index].complexity,
            duration: meals[index].duration,
            imageUrl: meals[index].imageUrl,
          ),
          itemCount: meals.length,
        ),
      ),
    );
  }
}
