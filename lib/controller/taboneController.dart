import 'package:get/get.dart';

class TaboneController extends GetxController {
  static TaboneController get to => Get.find();


  var currentImageIndex = 0;

  changeindex(val){
    currentImageIndex = val;
    update();
  }

}
