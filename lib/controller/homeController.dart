import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  int cindex = 0;

  changeindex(val) {
    cindex = val;
    update();
  }
}
