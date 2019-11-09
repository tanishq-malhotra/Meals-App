import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget getOption(String title, IconData icon) {
    return ListTile(
      onTap: () {},
      leading: Icon(
        icon,
        size: 25,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).accentColor,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(15),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 20),
          getOption(
            'Meals',
            Icons.restaurant,
          ),
          getOption(
            'Filters',
            Icons.settings,
          ),
        ],
      ),
    );
  }
}
