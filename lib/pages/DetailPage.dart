import 'package:application/misc/colors.dart';
import 'package:application/widgets/AppButtons.dart';
import 'package:application/widgets/AppLargeText.dart';
import 'package:application/widgets/AppText.dart';
import 'package:application/widgets/ResponsiveButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            // background image
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('img/tree.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),

            // icon(s)
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    ),
                  ],
                )),

            // body
            Positioned(
                top: 320,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "Yosemite",
                            color: Colors.black.withOpacity(0.8),
                          ),
                          AppLargeText(
                            text: "\$300",
                            color: AppColors.mainColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColors.mainColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          AppText(
                            text: "Lagos, Nigeria",
                            color: AppColors.textColor1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(Icons.star,
                                  color: index < gottenStars
                                      ? AppColors.starColor
                                      : AppColors.textColor2);
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          AppText(
                            text: "(4.0)",
                            color: AppColors.textColor2,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      AppLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      AppText(
                        text: "Number of people in the group",
                        color: AppColors.mainTextColor,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container( 
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButtons(
                                size: 50,
                                color: selectedIndex == index?Colors.white:Colors.black,
                                backgroundColor: selectedIndex == index? Colors.black12:AppColors.mainColor,
                                borderColor: selectedIndex == index? Colors.black : AppColors.buttonBackground,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        }),
                      ),

                      SizedBox(
                        height: 15,
                      ),

                      AppLargeText(text: 'Description', color: Colors.black.withOpacity(0.8), size: 20,),
                      SizedBox(height: 5,),
                      AppText(text: "It sucks to see you've changed up. I wish you didn't get famous. Turn into a stranger.", color: AppColors.mainTextColor,),
                    ],
                  ),
                )),

                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Row(
                    children: [
                      AppButtons(size: 50, color: AppColors.textColor1, backgroundColor: Colors.white, borderColor: AppColors.textColor1, isIcon: true, icon: Icons.favorite_border,),
                      SizedBox(width: 20,),
                      ResponsiveButton( isResponsive: true, )
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}
