import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../resource_manager/asset_path_manager.dart';

class CustomPasswordTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String hintText;
  bool obsCureText = true;
  final ValueChanged<String>? onChanged;

  CustomPasswordTextField({
    Key? key,
    this.controller,
    required this.hintText, this.onChanged,
  }) : super(key: key);

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      controller: widget.controller,
      obscureText: widget.obsCureText,
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        hintText: widget.hintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide.none),
        prefixIcon:  Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(AssetPathManager.passIcon),
        ),
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              widget.obsCureText = !widget.obsCureText;
            });
          },
          child: Icon(
            widget.obsCureText
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            size: 20.0,
            color: Colors.grey,
          ),
        ),
      ),
      keyboardType: TextInputType.text,
    );
  }
}
