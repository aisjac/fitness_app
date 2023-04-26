import 'package:fitness_app/custom_widget/custom_button.dart';
import 'package:fitness_app/resource_manager/color_manager.dart';
import 'package:fitness_app/screen/on_boarding/on_boarding_one.dart';
import 'package:fitness_app/screen/slider_screen/slider_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../resource_manager/asset_path_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                ColorManager.primaryColor,
                ColorManager.secondaryColor,
              ],
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(AssetPathManager.appLogoPng,scale: 3,),
                    const SizedBox(height: 15),
                    const Text("Everybody Can Train"),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0,right: 30.0,bottom: 50.0),
                    child: CustomButton(text: "Get Started",textColor: ColorManager.primaryColor, onTap: () {
                      Get.to(()=> const OnBoardingOne());
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
