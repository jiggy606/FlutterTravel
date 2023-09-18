import 'package:application/misc/colors.dart';
import 'package:application/widgets/AppText.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  double size;
  final Color borderColor;
  String? text;
  IconData? icon;
  bool? isIcon;

  AppButtons({
    super.key,
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    this.text="yo",
    this.icon,
    this.isIcon=false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: isIcon==false?Center(child: AppText(text: text!, color: color)):Center(child: Icon(icon, color: color,)),
    );
  }
}
