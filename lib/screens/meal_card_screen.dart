import 'package:flutter/material.dart';

class MealCardScreen extends StatelessWidget {
  static const routeName = '/meal-card-screen';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as String;
    final String id = routeArgs;
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
      ),
      body: Center(
        child: Text('This is meal screen of id $id'),
      ),
    );
  }
}
