import 'package:flutter/material.dart';
import 'package:south_forest_restaurant/app/common/app_constants.dart';

class HomeViewDesktop extends StatelessWidget {
  const HomeViewDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Hello my pages',
        style: TextStyle(color: primaryColor),
      ),
    );
  }
}
