import 'package:fitness_app/resource_manager/asset_path_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;

  const CustomTextField({
    Key? key,
    this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        filled: true,
        prefixIcon:  Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(AssetPathManager.emailIcon),
        ),
        fillColor: Colors.grey[200],
        hintText: hintText,
        // contentPadding:
        //     const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide.none
        ),
      ),
      keyboardType: TextInputType.text,
    );
  }
}
