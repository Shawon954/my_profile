import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';


import '../../../responsive/responsive_screen.dart';
import '../../dashboard/views/dashboard_view.dart';
import '../controllers/homepage_controller.dart';

class HomepageView extends GetView<HomepageController> {
 
  final HomepageController _homepageController = Get.put(HomepageController());

  HomepageView({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    return Responsive(
      mobile:DashboardView(),
      tablet: DashboardView(),
      desktop: DashboardView(),
    );
  }
}

