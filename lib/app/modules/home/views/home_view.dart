import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:south_forest_restaurant/app/common/app_constants.dart';
import 'package:south_forest_restaurant/app/modules/home/views/home_view.phone.dart';
import 'package:south_forest_restaurant/app/modules/home/views/home_view.tablet.dart';

import '../controllers/home_controller.dart';
import 'home_view,desktop.dart';

class HomeView extends GetResponsiveView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: Text(
          'Hello my pages',
          style: GoogleFonts.roboto(fontSize: 20, color: primaryColor),
        ),
      ),
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
