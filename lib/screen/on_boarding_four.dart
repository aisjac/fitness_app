import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resource_manager/asset_path_manager.dart';

class OnBoardingFour extends StatelessWidget {
  const OnBoardingFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/1.75,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(AssetPathManager.boardingFourImgPng,fit: BoxFit.fill,),
          ),

          Container(
            width: MediaQuery.of(context).size.width,

            padding: EdgeInsets.only(left: 20.0,top: 50.0,right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Improve Sleep  Quality",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
                SizedBox(height: 20,),
                Text("Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",style: TextStyle(fontSize: 14),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
