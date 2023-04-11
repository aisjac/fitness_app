import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../resource_manager/asset_path_manager.dart';
import 'on_boarding_four.dart';

class OnBoardingThree extends StatelessWidget {
  const OnBoardingThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () { Get.to(OnBoardingFour()); },
        child: Text("Go"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/1.75,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(AssetPathManager.boardingThreeImgPng,fit: BoxFit.fill,),
          ),

          Container(
            width: MediaQuery.of(context).size.width,

            padding: EdgeInsets.only(left: 20.0,top: 50.0,right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Eat Well",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 20,),
                Text("Let\'s start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",style: TextStyle(fontSize: 14),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
