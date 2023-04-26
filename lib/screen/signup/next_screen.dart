import 'package:fitness_app/custom_widget/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../custom_widget/custom_gradient_button.dart';
import '../../resource_manager/asset_path_manager.dart';
import 'complete_profile_screen.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Image.asset(
                        AssetPathManager.welcomeScreenIconPng,
                        scale: 3,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Let’s complete your profile",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  const Text("It will help us to know more about you!"),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    hintText: "Choose gender",
                    svgPrefix: AssetPathManager.genderIcon,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    hintText: "Date of Birth",
                    svgPrefix: AssetPathManager.calendarIcon,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomTextField(
                    hintText: "Your Weight",
                    svgPrefix: AssetPathManager.calendarIcon,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   const CustomTextField(
                    hintText: "Your Height",
                    svgPrefix: AssetPathManager.calendarIcon,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, right: 30.0, bottom: 50.0),
                  child: CustomGradientButton(
                      text: "Next >",
                      textColor: Colors.white,
                      onTap: () {
                        Get.to(const CompleteProfileScreen());
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
