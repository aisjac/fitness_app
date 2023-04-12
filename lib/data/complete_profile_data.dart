import 'package:fitness_app/model/complete_profile_dm.dart';
import 'package:fitness_app/resource_manager/asset_path_manager.dart';

class Userdata {
  static List<CompleteProfileDm> dataList = [
    CompleteProfileDm(
        title: 'Improve Shape',
        details:
            'I have a low amount of body fat and need / want to build more muscle',
        iconPath: AssetPathManager.weightLifting),
    CompleteProfileDm(
        title: 'Lean & Tone',
        details:
            'I\’m “skinny fat”. look thin but have no shape. I want to add learn muscle in the right way',
        iconPath: AssetPathManager.ropeJumping),
    CompleteProfileDm(
        title: 'Lose a Fat',
        details:
            'I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass',
        iconPath: AssetPathManager.humanRunning),
  ];
}
