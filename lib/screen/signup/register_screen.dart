import 'package:fitness_app/screen/login/login_screen.dart';
import 'package:fitness_app/screen/signup/next_screen.dart';
import 'package:fitness_app/screen/signup/register_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../custom_widget/custom_gradient_button.dart';
import '../../custom_widget/custom_password_textfield.dart';
import '../../custom_widget/custom_textfield.dart';
import '../../resource_manager/asset_path_manager.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<RegisterController>(
        init: RegisterController(),
        builder: (controller) {
          return SingleChildScrollView(
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Hey There,"),
                          const Text(
                            "Create an Account",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15.0),
                            child: CustomTextField(
                              svgPrefix: AssetPathManager.profileIcon,
                              hintText: "First Name",
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),

                          const Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15.0),
                            child: CustomTextField(
                              svgPrefix: AssetPathManager.profileIcon,
                              hintText: "Last Name",
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15.0, right: 15.0),
                            child: CustomTextField(
                              svgPrefix: AssetPathManager.emailIcon,
                              hintText: "Email",
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                            child: CustomPasswordTextField(
                              hintText: "Password",
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0)),
                                  side:  const BorderSide(
                                    color: Colors.grey,
                                  ),
                                  value: controller.isChecked,
                                  onChanged: (value) {
                                    controller.changeStatus(value!);
                                  },
                                ),
                                const Text(
                                  "By continuing you accept our ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                InkWell(
                                  onTap: () {
                                    // AppConstant.launchURL(
                                    //     AppConstant.TERMS_AND_CONDITIONS_URL);
                                  },
                                  child: const Text(
                                    "Term of Use",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding:
                              const EdgeInsets.only(left: 30.0, right: 30.0),
                              child: CustomGradientButton(
                                  iconPath:
                                  AssetPathManager.loginPrefixButtonIconPng,
                                  text: "Register",
                                  textColor: Colors.white,
                                  onTap: () {
                                    Get.to(const NextScreen());
                                  }),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1,
                                width: 133,
                                color: Colors.grey[400],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                                child: Text(
                                  "Or",
                                  style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                                ),
                              ),
                              Container(
                                height: 1,
                                width: 133,
                                color: Colors.grey[400],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.grey),
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                                  shape: BoxShape.rectangle,
                                ),
                                width: 70.0,
                                height: 70.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child:
                                  Image.asset(AssetPathManager.googleIconPng),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(width: 1, color: Colors.grey),
                                  borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                                  shape: BoxShape.rectangle,
                                ),
                                width: 70.0,
                                height: 70.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                  Image.asset(AssetPathManager.facebookIconPng),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              const Text("Already have an account?"),
                              InkWell(
                                onTap: (){
                                  Get.to(LogInScreen());
                                },
                                child: const Text(
                                  " Login",
                                  style: TextStyle(color: Colors.purple),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
