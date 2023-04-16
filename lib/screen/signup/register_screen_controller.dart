import 'package:get/get.dart';

class RegisterController extends GetxController{

  bool isChecked = false;


  void changeStatus(bool value) {
    isChecked = value;
    update();
  }
}