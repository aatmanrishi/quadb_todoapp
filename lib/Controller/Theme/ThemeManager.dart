import 'package:get/get.dart';

class Thememanager extends GetxController {
  final RxInt taksIndex = 0.obs;
  final RxBool mode = false.obs;

  void manageTheme() {
    if (mode.value == true) {
      mode.value = false;
    } else {
      mode.value = true;
    }
  }

  void selectTask(int index) {
    taksIndex.value = index;
  }
}
