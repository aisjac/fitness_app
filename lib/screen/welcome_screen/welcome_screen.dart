import 'package:fitness_app/custom_widget/custom_gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../custom_widget/custom_button.dart';
import '../../resource_manager/asset_path_manager.dart';
import '../../resource_manager/color_manager.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Image.asset(AssetPathManager.welcomeScreenIconPng,scale: 2,),
                ),
                const SizedBox(height: 25),
                const Text("Welcome, AisJac",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                const SizedBox(height: 15),
                const Text("You are all set now, let\’s reach your goals together with us"),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30.0,bottom: 50.0),
                child: CustomGradientButton(text: "Get Started",textColor: Colors.white, onTap: () {

                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
