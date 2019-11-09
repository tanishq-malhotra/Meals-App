import 'package:flutter/material.dart';
import '../models/dummy_data.dart';

class MealCardScreen extends StatelessWidget {
  static const routeName = '/meal-card-screen';
  Widget buildHeader(BuildContext context, String title) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Text(
        title,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      height: 150,
      margin: EdgeInsets.all(10),
      width: 300,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as String;
    final String id = routeArgs;
    final mealData = Dummy_Meals.firstWhere((meal) => meal.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text(mealData.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              child: Image.network(
                mealData.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildHeader(context, 'Ingredients'),
            buildContainer(
              ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(
                        mealData.ingredients[index],
                      ),
                    ),
                  );
                },
                itemCount: mealData.ingredients.length,
              ),
            ),
            buildHeader(context, 'Steps'),
            buildContainer(
              ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Theme.of(context).accentColor,
                          child: Text(
                            '# ${index + 1}',
                          ),
                        ),
                        title: Text(
                          mealData.steps[index],
                        ),
                      ),
                      Divider(),
                    ],
                  );
                },
                itemCount: mealData.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
