import 'package:get/get.dart';

class DashboardController extends GetxController {
  var isDarkMode = true.obs;


  toggleDarkMode() {
    isDarkMode.value = !isDarkMode.value;
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    toggleDarkMode();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
