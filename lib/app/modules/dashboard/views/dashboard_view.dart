import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_profile/app/modules/skill/views/skill_view.dart';

import 'package:my_profile/app/responsive/responsive_screen.dart';

import '../../../coustom_appbar/coustom_app_bar.dart';
import '../../../coustom_appbar/navbar.dart';
import '../../../custom_widget/backround_screen/backround_screen.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {

  DashboardController dashboardController = Get.put(DashboardController());
   DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

  var height = MediaQuery.sizeOf(context).height;
  var width = MediaQuery.sizeOf(context).width;

    return BackroundScreen(
        BackroundColor: Colors.amber,
        body: SizedBox(
          height: Responsive.isTablet(context)?height*0.6:height*0.90,
          child: Container(
            color: Colors.deepOrange,
            child: Column(
              children: [
                CoustomAppbar(context, controller),
                SkillView(),
              ],
            ),
          ),
        ),
      );
  }
}

Widget CoustomAppbar(context, controller) {
  final width = MediaQuery.sizeOf(context).width;
  return Row(
    children: [
      Expanded(
        flex: 15,
        child: Obx(() {
          return AdaptiveNavBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            screenWidth: width,
            image: Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Image.asset('assets/my_signature/signa.png',scale: 2.6,
                color:controller.isDarkMode.value ? Colors.white : Colors.black87 ,
              ),
            ),

            navBarItems: [
              NavBarItem(
                hoverColor: controller.isDarkMode.value
                    ? Colors.white54
                    : Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                textStyle: TextStyle(
                    fontSize: 14,
                    color: controller.isDarkMode.value
                        ? Colors.white
                        : Colors.black87,
                    fontWeight: FontWeight.w500),
                text: "Home",
                onTap: () {

                },
              ),
              NavBarItem(
                  hoverColor: controller.isDarkMode.value
                      ? Colors.white54
                      : Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  textStyle: TextStyle(
                      fontSize: 14,
                      color: controller.isDarkMode.value
                          ? Colors.white
                          : Colors.black87,
                      fontWeight: FontWeight.w500),
                  text: "Skills",
                  onTap: () {

                  }
              ),
              NavBarItem(
                hoverColor: controller.isDarkMode.value
                    ? Colors.white54
                    : Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                textStyle: TextStyle(
                    fontSize: 14,
                    color: controller.isDarkMode.value
                        ? Colors.white
                        : Colors.black87,
                    fontWeight: FontWeight.w500),
                text: "My Works",
                onTap: () {
                  Navigator.pushNamed(context, "routeName");
                },
              ),
              NavBarItem(
                hoverColor: controller.isDarkMode.value
                    ? Colors.white54
                    : Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                textStyle: TextStyle(
                    fontSize: 14,
                    color: controller.isDarkMode.value
                        ? Colors.white
                        : Colors.black87,
                    fontWeight: FontWeight.w500),
                text: "About Us",
                onTap: () {
                  Navigator.pushNamed(context, "routeName");
                },
              ),
              NavBarItem(
                hoverColor: controller.isDarkMode.value
                    ? Colors.white54
                    : Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                textStyle: TextStyle(
                    fontSize: 14,
                    color: controller.isDarkMode.value
                        ? Colors.white
                        : Colors.black87,
                    fontWeight: FontWeight.w500),
                text: "Contact",
                onTap: () {

                },
              ),
            ],
          );
        }),
      ),
      Expanded(
          flex: 1,
          child: Obx(() {
            return DayNightSwitcherIcon(
                cloudsColor: Colors.white,
                cratersColor: Colors.red,
                isDarkModeEnabled: controller.isDarkMode.value,
                onStateChanged: (val) {
                  controller.toggleDarkMode();
                });
          }))
    ],
  );
}