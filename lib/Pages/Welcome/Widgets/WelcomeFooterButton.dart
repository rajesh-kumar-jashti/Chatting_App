import 'package:chatty/Config/Images.dart';
import 'package:chatty/Config/Strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';

class WelcomeFooterButton extends StatelessWidget {
  const WelcomeFooterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SlideAction(
          onSubmit: () {
            Get.offAllNamed("/authPage");
          },
          sliderButtonIcon: Container(
            width: 25,
            height: 25,
            child: SvgPicture.asset(
              AssetsImage.plugSVG,
              width: 25,
            ),
          ),
          text: WelcomePageString.slideToStart,
          textStyle: Theme.of(context).textTheme.labelLarge,
          submittedIcon: SvgPicture.asset(
            AssetsImage.connectSVG,
            width: 25,
          ),
          innerColor: Theme.of(context).colorScheme.primary,
          outerColor: Theme.of(context).colorScheme.primaryContainer,
        )
      ],
    );
  }
}
