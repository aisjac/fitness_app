import 'package:fitness_app/resource_manager/color_manager.dart';
import 'package:fitness_app/screen/slider_screen/slider_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class SliderScreen extends StatelessWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SliderController>(
        init: SliderController(),
        builder: (controller) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SleekCircularSlider(
                    initialValue: controller.progressInitialValue,
                    max: 5,
                    appearance: CircularSliderAppearance(
                      infoProperties: InfoProperties(),
                      angleRange: 360,
                      startAngle: 90,
                      size: MediaQuery.of(context).size.width * 0.5,
                      customColors: CustomSliderColors(
                        hideShadow: true,
                        dotColor: Colors.red,
                        progressBarColors: [Colors.red,Colors.green],
                        trackColor: Colors.grey,
                      ),
                      customWidths: CustomSliderWidths(
                          progressBarWidth: 20.0, trackWidth: 10.0),
                    ),
                    onChange: (double v) {
                      print("object $v");
                    },

                  ),
                  ElevatedButton(
                      onPressed: () {
                        controller.increaseValue();
                      },
                      child: Text("Click"))
                ],
              ),
            ),
          );
        });
  }
}
