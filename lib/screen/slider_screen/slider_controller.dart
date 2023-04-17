import 'package:get/get.dart';

class SliderController extends GetxController{
  double progressInitialValue = 0;

  void increaseValue(){
    if(progressInitialValue != 5){
      progressInitialValue = progressInitialValue+1;
      update();
    }
  }
}