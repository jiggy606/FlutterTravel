import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const AppText({
      this.size = 16,
      required this.text,
      this.color = Colors.white54,
      super.key
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(
            color: color, 
            fontSize: size, 
            ),
    );
  }
}
