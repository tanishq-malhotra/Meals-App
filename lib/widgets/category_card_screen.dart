import 'package:flutter/material.dart';

class CategoryCardScreen extends StatelessWidget {
  static const routeName = '/category-card-screen';
  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(
        title: Text(routesArgs['title']),
      ),
      body: Center(
        child: Text("In the card screen"),
      ),
    );
  }
}
