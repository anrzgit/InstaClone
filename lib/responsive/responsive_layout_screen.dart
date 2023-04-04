import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta_clone/utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webScreenlayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.webScreenlayout,
      required this.mobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    //LayoutBuilder used for creating responsive layout
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenSize) {
        //pass web screen
        return webScreenlayout;
      }
      //mobile screen layout
      return mobileScreenLayout;
    });
  }
}
