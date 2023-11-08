import 'package:flutter/material.dart';

class Responsive extends StatelessWidget with WidgetsBindingObserver {

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({super.key, required this.mobile, required this.tablet, required this.desktop});

 static bool isMobile(BuildContext context) =>
     MediaQuery.of(context).size.width < 450;

 static bool isTablet(BuildContext context) =>
     MediaQuery.of(context).size.width >=451 &&
  MediaQuery.of(context).size.width < 800;

  static bool isDesktop(BuildContext context) =>
   MediaQuery.of(context).size.width > 800;


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
     if(size.width <450){
       return mobile;
     }
     else if(size.width >=451 && size.width <800){
       return tablet;
     }
     else{
       return desktop;
     }

  }
}
