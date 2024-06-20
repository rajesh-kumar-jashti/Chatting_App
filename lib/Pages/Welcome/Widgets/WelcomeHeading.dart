import 'package:chatty/Config/Images.dart';
import 'package:chatty/Config/Strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeHeading extends StatelessWidget {
  const WelcomeHeading ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AssetsImage.appIconSVG,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text(
                AppString.appName, 
                style: Theme.of(context).textTheme.headlineLarge,
              ),
    ],);
  }
}