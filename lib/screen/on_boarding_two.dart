import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../resource_manager/asset_path_manager.dart';
import 'on_boarding_three.dart';

class OnBoardingTwo extends StatelessWidget {
  const OnBoardingTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () { Get.to(OnBoardingThree()); },
        child: Text("Go"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/1.75,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(AssetPathManager.boardingTwoImgPng,fit: BoxFit.fill,),
          ),

          Container(
            width: MediaQuery.of(context).size.width,

            padding: EdgeInsets.only(left: 20.0,top: 50.0,right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Get Burn",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 20,),
                Text("Let\’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
