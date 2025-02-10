import 'package:get/get.dart';

class Thememanager extends GetxController {
  final RxBool mode = false.obs;

  void manageTheme() {
    if (mode.value == true) {
      mode.value = false;
    } else {
      mode.value = true;
    }
  }
}
