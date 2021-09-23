import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:south_forest_restaurant/app/modules/home/views/home_view.phone.dart';
import 'package:south_forest_restaurant/app/modules/home/views/home_view.tablet.dart';

import '../controllers/home_controller.dart';
import 'home_view,desktop.dart';

class HomeView extends GetResponsiveView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    if (screen.isDesktop) {
      return HomeViewDesktop();
    } else if (screen.isTablet) {
      return HomeViewTablet();
    }
    return HomeViewPhone();
  }
}
