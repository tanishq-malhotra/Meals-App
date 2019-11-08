import 'package:flutter/material.dart';
import '../models/dummy_data.dart';
import './category_card.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meals App',
        ),
      ),
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DummyData.map(
            (data) => CatergoryCard(data.id, data.title, data.color)).toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
