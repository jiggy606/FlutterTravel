import 'package:application/misc/colors.dart';
import 'package:application/widgets/AppLargeText.dart';
import 'package:application/widgets/AppText.dart';
import 'package:application/widgets/ResponsiveButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "home1.jpg",
    "home2.jpg",
    "home3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration:
                  BoxDecoration(image: DecorationImage(image: AssetImage(
                      // ignore: prefer_interpolation_to_compose_strings
                      "img/" + images[index]), fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "Mountain"),
                        AppText(
                          text: "Trips",
                          size: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text: "Ocean, the sky and space makes you admire the wonders of the world. Do you want to keep going?",
                            color: AppColors.textColor2,
                            size: 14,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        ResponsiveButton(
                          width: 120,
                        )
                      ],
                    ),

                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 3),
                          width: 8,
                          height: index == indexDots?25:8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index==indexDots?AppColors.mainColor : AppColors.mainColor.withOpacity(0.3)
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
