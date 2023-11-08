import 'package:get/get.dart';

import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/homepage/bindings/homepage_binding.dart';
import '../modules/homepage/views/homepage_view.dart';
import '../modules/skill/bindings/skill_binding.dart';
import '../modules/skill/views/skill_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = '/homepage';

  static final routes = [
    GetPage(
      name: _Paths.homepage,
      page: () => HomepageView(),
      binding: HomepageBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.SKILL,
      page: () => const SkillView(),
      binding: SkillBinding(),
    ),
  ];
}
