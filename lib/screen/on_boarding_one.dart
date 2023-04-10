import 'package:fitness_app/resource_manager/asset_path_manager.dart';
import 'package:fitness_app/resource_manager/color_manager.dart';
import 'package:fitness_app/screen/on_boarding_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OnBoardingOne extends StatelessWidget {
  const OnBoardingOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () { Get.to(OnBoardingTwo()); },
        child: Text("Go"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/1.75,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(AssetPathManager.boardingOneImgPng,fit: BoxFit.fill,),
          ),

          Container(
            width: MediaQuery.of(context).size.width,

            padding: EdgeInsets.only(left: 20.0,top: 50.0,right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Track Your Goal",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 20,),
                Text("Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals",style: TextStyle(fontSize: 14),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
