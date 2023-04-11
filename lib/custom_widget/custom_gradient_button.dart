import 'package:fitness_app/resource_manager/color_manager.dart';
import 'package:flutter/material.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton(
      {super.key,
      required this.text,
      this.iconPath,
      this.bgColor,
      this.textColor,
      this.height,
      this.width,
      this.minHeight,
      required this.onTap});

  final String text;
  final double? height;
  final double? width;
  final String? iconPath;
  final Color? bgColor;
  final Color? textColor;
  final double? minHeight;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              ColorManager.primaryColor,
              ColorManager.secondaryColor,
            ],
          ),
        ),
        child: ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
                // minimumSize: Size(minWidth ?? 300, minHeight ?? 50),
                // maximumSize: Size(maxWidth ?? 300, maxHeight ?? 50),
                backgroundColor: Colors.transparent),
            child: SizedBox(
              height: minHeight ?? 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (iconPath != null)
                    Row(
                      children: [
                        Image.asset(
                          iconPath ?? "",
                          height: height ?? 20,
                          width: width ?? 20,
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  Text(
                    text,
                    style: TextStyle(color: textColor),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
