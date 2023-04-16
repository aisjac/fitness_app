import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_app/resource_manager/color_manager.dart';
import 'package:fitness_app/screen/signup/complete_profile_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../custom_widget/custom_gradient_button.dart';
import '../../resource_manager/asset_path_manager.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ProfileCompleteController>(
          init: ProfileCompleteController(),
          builder: (controller) {
            return Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, top: 70, right: 8.0, bottom: 8.0),
                    child: Column(
                      children: const [
                        Text(
                          "What is your goal ?",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15),
                        Center(
                            child: Text(
                          "It will help us to choose a best \n program for you",
                          textAlign: TextAlign.center,
                        )),
                      ],
                    ),
                  ),
                  Container(
                    height: 400,
                    margin: const EdgeInsets.only(top: 15, bottom: 15),
                    child: CarouselSlider.builder(
                      itemCount: controller.profileList.length,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        height: 300,
                        autoPlay: false,
                        autoPlayInterval: const Duration(seconds: 3),
                        reverse: false,
                        aspectRatio: 5.0,
                      ),
                      itemBuilder: (context, index, pageViewIndex) {
                        //for onTap to redirect to another screen
                        return Container(
                          height: 450,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            color: ColorManager.primaryColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  controller.profileList[index].iconPath,
                                  scale: 2,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(controller.profileList[index].title),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 2,
                                  width: 50,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  height: 20,
                                ),

                                Expanded(
                                    child: Text(
                                        controller.profileList[index].details)),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, right: 30.0, bottom: 50.0),
                      child: CustomGradientButton(
                          text: "Go To Home",
                          textColor: Colors.white,
                          onTap: () {}),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
